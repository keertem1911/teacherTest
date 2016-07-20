package teacherAction;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.alibaba.fastjson.JSON;
import com.opensymphony.xwork2.ActionContext;

import comment.BaseAction;
import empties.Course;
import empties.Question;
import empties.Test;
import empties.User;
import teacherService.UnitService;

public class UnitAction extends BaseAction<Question>{
	private UnitService unitService;
	public void setUnitService(UnitService unitService) {
		this.unitService = unitService;
	}
	public UnitService getUnitService() {
		return unitService;
	}
	// txt 接收 sno
	public String findTestById(){
		List<Test> questions=unitService.findTestById(model.getTxt());
		String json =JSON.toJSONString(questions);
		System.out.println(json);
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=utf-8");
		PrintWriter pw =null;
		try {
			pw= response.getWriter();
			pw.write(json);
			pw.flush();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			if(pw!=null){
				pw.close();
			}
		}
		return null;
	}
	public String findSelect(){
		 
		List<Question> questions=unitService.findSelect(model.getIdx_1());
		String json =JSON.toJSONString(questions);
		System.out.println(json);
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=utf-8");
		PrintWriter pw =null;
		try {
			pw= response.getWriter();
			pw.write(json);
			pw.flush();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			if(pw!=null){
				pw.close();
			}
		}
		return null;
	}
	 //ids == type question id[]
	//	name == txt  试卷名称
	// sno  ===  Answer  
	public String save(){
		int flag=unitService.save(model.getTypes(),model.getTxt(),model.getAnswer());
		HttpServletResponse response=getResponse();
		response.setCharacterEncoding("utf-8");
		String json=null;
		Map<String, Integer> map=new HashMap<>();
		if(flag!=0){
			map.put("status", 200);
		}else{
			map.put("status", 300);
		}
		json=JSON.toJSONString(map);
		PrintWriter pw =null;
		try {
			pw= response.getWriter();
			pw.write(json);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			if(pw!=null){
				pw.close();
			}
		}
		return null;
	}
	public String searchTest(){
		// ids == types
		List<Question> list=unitService.searchTest(model.getTypes());
		String json =JSON.toJSONString(list);
		System.out.println(json);
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=utf-8");
		PrintWriter pw =null;
		try {
			pw= response.getWriter();
			pw.write(json);
			pw.flush();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			if(pw!=null){
				pw.close();
			}
		}
		return null;
	}
	//types == sno {types:sno,txt:passwd} url:teacher_logCheck.action 200 s 300 e
	//txt == passwd
	public String logCheck(){
		System.out.println(model);
		User user=unitService.logCheck(model.getTypes(),model.getTxt());
		Map<String, Object> map=new HashMap<>();
		int i=200;
		if(user==null) i=300;
		else{
			List<Course> courses=unitService.findCourseBySno(String.valueOf(user.getId()));
			System.out.println(Arrays.asList(courses));
			getRequest().getSession().setAttribute("course", courses);
			
		}
	//	String course=unitService.findCourseById(user.getId());
	//	System.out.println(course);
	//	ServletActionContext.getContext().getSession().put("course", course);
		map.put("status", i);
		 map.put("user", user);
		 Map<String, Object> session = ActionContext.getContext().getSession();
		 session.put("user", user);
		
		 String json=JSON.toJSONString(map);
		 HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=utf-8");
		PrintWriter pw =null;
		try {
			pw= response.getWriter();
			
			pw.write(json);
			pw.flush();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			if(pw!=null){
				pw.close();
			}
		}
		return null;
	}
	public String home(){
		 
		return "home";
	}
	public String addQuestion(){
		
		int i=unitService.addQuestion(model);
		 
		Map<String, Object> map=new HashMap<>();
		 map.put("status", i);
		
		 String json=JSON.toJSONString(map);
		 HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=utf-8");
		PrintWriter pw =null;
		try {
			pw= response.getWriter();
			
			pw.write(json);
			pw.flush();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			if(pw!=null){
				pw.close();
			}
		}
		return null;
	}
	public String updateByquestion(){
		int i=unitService.updateByquestion(model);
		Map<String, Object> map=new HashMap<>();
		 map.put("status", i);
		
		 String json=JSON.toJSONString(map);
		 HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=utf-8");
		PrintWriter pw =null;
		try {
			pw= response.getWriter();
			
			pw.write(json);
			pw.flush();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			if(pw!=null){
				pw.close();
			}
		}
	
		return null;
	}
	 //ids == type question id[]
	//	name == txt  试卷名称
	// id  ===  id 
	public String updateBytest(){
		int i=unitService.updateBytest(model);
		Map<String, Object> map=new HashMap<>();
		 map.put("status", i);
		
		 String json=JSON.toJSONString(map);
		 HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=utf-8");
		PrintWriter pw =null;
		try {
			pw= response.getWriter();
			
			pw.write(json);
			pw.flush();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			if(pw!=null){
				pw.close();
			}
		}
	
		return null;
	}
	public String deleteByquestion(){
		 int i=unitService.deleteByquestion(model.getId());

		Map<String, Object> map=new HashMap<>();
		 map.put("status", i);
		
		 String json=JSON.toJSONString(map);
		 HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=utf-8");
		PrintWriter pw =null;
		try {
			pw= response.getWriter();
			
			pw.write(json);
			pw.flush();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			if(pw!=null){
				pw.close();
			}
		}
	
		return null;
	}
	public String deleteBytest(){
		 int i=unitService.deleteBytest(model.getId());
		Map<String, Object> map=new HashMap<>();
		 map.put("status", i);
		
		 String json=JSON.toJSONString(map);
		 HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=utf-8");
		PrintWriter pw =null;
		try {
			pw= response.getWriter();
			
			pw.write(json);
			pw.flush();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			if(pw!=null){
				pw.close();
			}
		}
	
		return null;
	}
	//通过 教师 SNO获取 其所教授的课程
	public String findCourseBySno(){
		String sno =getRequest().getParameter("sno");
		List<Course> courses=unitService.findCourseBySno(sno);
		 String json=JSON.toJSONString(courses);
		 HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=utf-8");
		getSession().setAttribute("course", courses);
		PrintWriter pw =null;
		try {
			pw= response.getWriter();
			
			pw.write(json);
			pw.flush();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			if(pw!=null){
				pw.close();
			}
		}
	
	 
		return null;
	}
}
