package interceptor;

import org.apache.struts2.StrutsStatics;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class PersonaInterceptor extends AbstractInterceptor implements StrutsStatics {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		System.out.println("HOLA SOY UN NUEVO INTERCEPTOR");
		return invocation.invoke();
	}
	
	

}
