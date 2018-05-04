package action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.util.ServletContextAware;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SupperAction extends ActionSupport implements ServletRequestAware ,ServletResponseAware,ServletContextAware {
    public HttpServletRequest request;
    public HttpSession session;
    public HttpServletResponse response;
    public ServletContext application;
    @Override
    public void setServletRequest(HttpServletRequest request) {
        this.request = request;
        session = request.getSession();

    }

    @Override
    public void setServletResponse(HttpServletResponse response) {
        this.response = response;
    }

    @Override
    public void setServletContext(ServletContext context) {
        application = context;
    }
}
