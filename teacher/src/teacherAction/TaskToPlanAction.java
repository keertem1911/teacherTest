package teacherAction;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;

import comment.BaseAction;
import empties.Group;
import empties.TaskToplan;
import teacherService.TaskToPlanService;

public class TaskToPlanAction extends BaseAction<TaskToplan>{
	private TaskToPlanService taskToPlanService;

	public TaskToPlanService getTaskToPlanService() {
		return taskToPlanService;
	}

	public void setTaskToPlanService(TaskToPlanService taskToPlanService) {
		this.taskToPlanService = taskToPlanService;
	}
	//删除教学计划中的 任务 
	public String deleteByTaskToPlan(){
		
		int i=taskToPlanService.deleteByTaskToPlan(model.getT_id());
		Map<String, Object> map=new HashMap<>();
		map.put("statu",i);
		HttpServletResponse response = getResponse();
		response.setContentType("text/html;charset=utf-8");
		
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
	//修改 教学计划中的 任务 
	public String updateByTaskToPlan(){
		
		int i=taskToPlanService.updateByTaskToPlan(model);
		Map<String, Object> map=new HashMap<>();
		map.put("statu",i);
		HttpServletResponse response = getResponse();
		response.setContentType("text/html;charset=utf-8");
		
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
	//根据 教学计划的任务 查询 小组信息
 	public String findGroupsByTask(){
 		List<Group> groups=taskToPlanService.findGroupsByTask(model.getT_id());
 		 
		HttpServletResponse response = getResponse();
		response.setContentType("text/html;charset=utf-8");
		
		String json =JSON.toJSONString(groups);
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
 	//保存 小组成绩
 	public String saveGroupByTask(){
 		String g_id=getRequest().getParameter("g_id");
 		String s_score=getRequest().getParameter("s_score");
 		int i=taskToPlanService.saveGroupByTask(model.getT_id(),g_id,s_score);
		Map<String, Object> map=new HashMap<>();
		map.put("statu",i);
		HttpServletResponse response = getResponse();
		response.setContentType("text/html;charset=utf-8");
		
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
}
