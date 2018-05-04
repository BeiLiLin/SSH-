package domain;

import org.springframework.stereotype.Component;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Component("student")
@Entity
@Table(name = "Student")
public class Student {

    @Id
    private String Sid;
    private String SName;
    private String sex;
    private String  address;
    private String  tele;
    public Student() {
    }

    public void setSid(String sid) {
        Sid = sid;
    }

    public void setSName(String SName) {
        this.SName = SName;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setTele(String tele) {
        this.tele = tele;
    }

    public String getSid() {
        return Sid;
    }

    public String getSName() {
        return SName;
    }

    public String getSex() {
        return sex;
    }

    public String getAddress() {
        return address;
    }

    public String getTele() {
        return tele;
    }

    @Override
    public String toString() {
        return "Student{" +
                "Sid='" + Sid + '\'' +
                ", SName='" + SName + '\'' +
                ", sex='" + sex + '\'' +
                ", address='" + address + '\'' +
                ", tele='" + tele + '\'' +
                '}';
    }
}

