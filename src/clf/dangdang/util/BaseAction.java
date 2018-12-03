package clf.dangdang.util;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;

public class BaseAction extends ActionSupport {
	private ValueStack vs;

	public BaseAction() {
		ActionContext context = ActionContext.getContext();
		vs = context.getValueStack();
	}

	public Object getSessionScope(String ognl) {
		return vs.findValue("#session." + ognl);
	}

	public void setSessionScope(String ognl, Object value) {
		vs.setValue("#session." + ognl, value);
	}

	public Object getApplicationScope(String ognl) {
		return vs.findValue("#application." + ognl);

	}

	public void setApplicationScope(String ognl, Object value) {
		vs.setValue("#application." + ognl, value);
	}
}
