package teacherAction;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.alibaba.fastjson.JSON;

import comment.BaseAction;
 
import empties.Eduplan;
import empties.TaskToplan;
import teacherService.EduplanService;

public class EduplanAction extends BaseAction<Eduplan>{
	private EduplanService eduplanService;

	public EduplanService getEduplanService() {
		return eduplanService;
	}

	public void setEduplanService(EduplanService eduplanService) {
		this.eduplanService = eduplanService;
	}
	//初始化 教学计划 查询所有教学计划
	public String selectEduPlan(){
		List<Eduplan> eduplans=eduplanService.selectEduPlan();
		HttpServletResponse response = getResponse();
		response.setContentType("text/html;charset=utf-8");
		
		String json =JSON.toJSONString(eduplans);
		System.out.println(json);
		PrintWriter pw =null;
		try {
			pw= response.getWriter();
			pw.write(json);
			pw.flush();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			if(pw!=null)
				pw.close();
		}
		return null;
	}
	//查看教学计划对应的任务详情
	public String lookDetailTaskToEduplan(){
		List<TaskToplan> tasks=eduplanService.lookDetailTaskToEduplan(model.getM_id());
		HttpServletResponse response = getResponse();
		response.setContentType("text/html;charset=utf-8");
		
		String json =JSON.toJSONString(tasks);
		System.out.println(json);
		PrintWriter pw =null;
		try {
			pw= response.getWriter();
			pw.write(json);
			pw.flush();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			if(pw!=null)
				pw.close();
		}
		return null;
	}
	 public String deleteEduPlan(){
		 int i=eduplanService.deleteEduPlan(model.getM_id());
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
	public String findEduPlanById(){
		Eduplan eduplan=eduplanService.findEduPlanById(model.getM_id());

		 String json=JSON.toJSONString(eduplan);
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
	public String updateEduPlan(){
		int i=eduplanService.updateEduPlan(model);
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
	// 新建教学计划
			public String addEduPlan(){
			 
				 
				getModel().setM_date(new java.sql.Date(System.currentTimeMillis()));
				System.out.println(getModel());
				int i=eduplanService.addEduPlan(getModel());
				HttpServletResponse response = getResponse();
				response.setContentType("text/html;charset=utf-8");
				Map<String, Integer> map=new HashMap<>();
				map.put("status", i);
				String json =JSON.toJSONString(map);
				System.out.println(json);
				PrintWriter pw =null;
				try {
					pw= response.getWriter();
					pw.write(json);
					pw.flush();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}finally{
					if(pw!=null)
						pw.close();
				}
				return null;
			}
		//根据 课程查看对应的教学计划
		public String findEduPlanByCourse(){
			List<Eduplan> eduplans=eduplanService.findEduPlanByCourse(model.getCid());
			HttpServletResponse resp = getResponse();
			resp.setContentType("text/htmlp;charset=utf-8");
			PrintWriter pw = null;
			String json=JSON.toJSONString(eduplans);
			try {
				pw=resp.getWriter();
				pw.write(json);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				if(pw!=null)
					pw.close();
			}
			return null;
		}
}
