package teacherAction;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;

import comment.BaseAction;
import empties.TaskTomodel;
import teacherService.TaskToModelService;

public class TaskToModelAction extends BaseAction<TaskTomodel>{
	private TaskToModelService taskToModelService;

	public TaskToModelService getTaskToModelService() {
		return taskToModelService;
	}

	public void setTaskToModelService(TaskToModelService taskToModelService) {
		this.taskToModelService = taskToModelService;
	}
	
	//添加任务
	public String addTaskToModel(){
	 
		int i =taskToModelService.addTaskToModel(model);
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
	public String selectTaskToModel(){
		Map<String, Object> map=taskToModelService.selectTaskToModel(model.getM_id());
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
