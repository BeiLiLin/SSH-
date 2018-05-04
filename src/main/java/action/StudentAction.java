package action;

import common.Page;
import domain.Student;
import service.serviceImpl.StudentServiceImpl;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import java.util.ArrayList;
import java.util.List;

public class StudentAction extends SupperAction {
    @Resource(name = "studentService")
    private StudentServiceImpl studentService;
    @Resource(name = "page")
    private Page page;

    public Page getPage() {
        return page;
    }

    public void setStudentService(StudentServiceImpl studentService) {
        this.studentService = studentService;
    }

    public  String findByPage(){
        page.setNeedPage(true);
        if (page.getNeedUpdatePageCount()){
            int count = studentService.findCount(Student.class);
            count=count%10==0?count/10:count/10+1;
            page.setPageCount(count);
            page.setNeedUpdatePageCount(false);
        }
        if (page.getPageNum()>page.getPageCount())
            page.setPageNum(page.getPageCount());
        if (page.getPageNum()<=0)
            page.setPageNum(1);
        List<Student> studentList = studentService.Find(Student.class);
        request.setAttribute("studentList",studentList);
        request.setAttribute("PrePageNo",page.getPageNum()-1);
        request.setAttribute("NextPageNo",page.getPageNum()+1);
        request.setAttribute("pageCount",page.getPageCount());
        return "success";
    }
}
