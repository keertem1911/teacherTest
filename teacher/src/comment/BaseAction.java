package comment;

import java.lang.reflect.ParameterizedType;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

public class BaseAction<T> implements ModelDriven<T>{
	//获取实体类对象
	protected T model;
	public HttpServletRequest getRequest(){
		return ServletActionContext.getRequest();
	}
	public HttpServletResponse getResponse(){
		return ServletActionContext.getResponse();
	}
	@Override
	public T getModel() {
		// TODO Auto-generated method stub
		return model;
	}
	public HttpSession getSession(){
		return (HttpSession) ActionContext.getContext().getSession();
		
	}
	public BaseAction() {
		try {
			// 通过反射获得真实类型
			ParameterizedType pt = (ParameterizedType) this.getClass()
					.getGenericSuperclass();
			@SuppressWarnings("unchecked")
			Class<T> clazz = (Class<T>) pt.getActualTypeArguments()[0];
			// 通过反射创建model实例
			model = clazz.newInstance();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
}
