package action;

import javax.annotation.Resource;

public class PageAction extends SupperAction {

    public String left(){
        return "left";
    }
    public String main(){
        return "main";
    }
    public String top(){
        return "top";
    }
    public String StuManage(){
        return "StuManage";
    }
    public String logout(){
        session.invalidate();
        return "logout";
    }
}
