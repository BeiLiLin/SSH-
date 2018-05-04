package action;

import common.Page;
import domain.Student;
import service.serviceImpl.StudentServiceImpl;

import javax.annotation.Resource;

public class StudentAjaxAction extends SupperAction{

    @Resource(name = "studentService")
    private StudentServiceImpl studentService;

    @Resource(name = "student")
    private Student myStudent;

    @Resource(name = "page")
    private Page page;
    private String str;
    public String getStr() {
        return str;
    }
    public void setStr(String str) {
        this.str= str;
    }

    private String result;
    public String getResult() {
        return result;
    }
    public void setResult(String result) {
        this.result = result;
    }

    private Student student;
    public Student getStudent() {
        return student;
    }
    public void setStudent(Student student) {
        this.student = student;
    }


    public String find(){
        return SUCCESS;
    }
    public String delete(){
        page.setNeedUpdatePageCount(true);
        System.out.println("sid"+student.getSid());
        studentService.delete(Student.class,student.getSid());
        return SUCCESS;
    }
    public String update(){
        System.out.println(student.toString());
        myStudent = studentService.get(Student.class,student.getSid());
        if(myStudent.toString().equals(student.toString())){
            result= "false";
            System.out.println("没有改动");
        }else{
            if (studentService.update(student)){
                result= "success";
                System.out.println("改动");
            }else{
                result= "error";
                System.out.println("改动失败");
            }
        }
        return SUCCESS;
    }

    public String deleteAll(){
        page.setNeedUpdatePageCount(true);
        String []a = str.split(",");
        System.out.println(a);
        studentService.delete(Student.class,a);
        return SUCCESS;
    }

    public String add(){
        page.setNeedUpdatePageCount(true);
        Student s = studentService.get(Student.class,student.getSid());
        if (s == null){
            System.out.println(student.toString());
            if (studentService.save(student)){
                System.out.println("成功");
                result="success";
            }else{
                result="false";
            }
        }else{
            result="Sid重复";
            return SUCCESS;
        }
        return SUCCESS;
    }
}
