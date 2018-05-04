package Interceptors;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

import java.util.Map;

import static com.opensymphony.xwork2.Action.LOGIN;

public class LoginInterceptor extends MethodFilterInterceptor{
    @Override
    protected String doIntercept(ActionInvocation invocation) throws Exception {
        Map session = invocation.getInvocationContext().getSession();
        String uid = (String)session.get("uid");
        if(uid == null || uid.equals("")){
            System.out.println("经过拦截器不通过");
            return LOGIN;
        }
        else {
            System.out.println("经过拦截器通过");
            return invocation.invoke();
        }
    }

}
