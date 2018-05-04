package action;

import domain.User;
import service.serviceImpl.UserServiceImpl;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import java.util.HashMap;
import java.util.Map;

public class LoginAction extends SupperAction {
    @Resource(name = "myUser")
    private User user;
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    private Boolean cookie;
    public Boolean getCookie() {
        return cookie;
    }
    public void setCookie(Boolean cookie) {
        this.cookie = cookie;
}

    @Resource(name = "myUser")
    private User myUser;

    @Resource(name="userService")
    private UserServiceImpl userService;

    public String login(){
        System.out.println(user.toString());
        System.out.println(myUser.toString());
        myUser= userService.get(User.class,user.getUid());
        if (myUser.getPassword().equals(user.getPassword())){
            session.setAttribute("uid",user.getUid());
            if (cookie)
            {
                System.out.println("添加Cookie");
//             添加Cookie
                response.setCharacterEncoding("utf-8");
                Cookie cookie = new Cookie("uid",user.getUid());
                cookie.setMaxAge(60*60*1000);
                cookie.setPath("/");
                response.addCookie(cookie);
                cookie = new Cookie("pass",user.getPassword());
                cookie.setMaxAge(60*60*3000);
                cookie.setPath("/");
                response.addCookie(cookie);
            }else{
                System.out.println("删除Cookie");
//                删除Cookie
                Cookie cookie = new Cookie("uid",null);
                cookie.setMaxAge(0);
                cookie.setPath("/");
                response.addCookie(cookie);
                cookie  = new Cookie("pass",null);
                cookie.setPath("/");
                response.addCookie(cookie);
            }
            return SUCCESS;
        }else
            return LOGIN;

    }
}
