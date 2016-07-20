package teacherAction;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Currency;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;

import comment.BaseAction;
import empties.Course;
import empties.Model;
import empties.TaskTomodel;
import teacherService.ModelService;

public class ModelAction extends BaseAction<Model>{
		private ModelService modelService;

		public ModelService getModelService() {
			return modelService;
		}

		public void setModelService(ModelService modelService) {
			this.modelService = modelService;
		}
		// 新建模板
		public String addModel(){
		 
			 
			getModel().setM_date(new java.sql.Date(System.currentTimeMillis()));
			System.out.println(getModel());
			int i=modelService.addModel(getModel());
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
		// 新建模板页面 初始化查询课程
		public String selectCourseLIst(){
			List<Model> courses=modelService.selectCourseLIst();
			HttpServletResponse response = getResponse();
			response.setContentType("text/html;charset=utf-8");
			
			String json =JSON.toJSONString(courses);
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
		//删除 模板
		public String deleteModel(){
			int i=modelService.deleteModel(getModel().getM_id());
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
		//查看模板详情
		public String lookDetail(){
			Map<String, Object>	model=modelService.lookDetail(getModel().getM_id());
			
			HttpServletResponse response = getResponse();
			response.setContentType("text/html;charset=utf-8");
			 
			String json =JSON.toJSONString(model);
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
		//添加至教学计划
		public String addToPlan(){
		 
		int i =modelService.addToPlan(model.getM_id());
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
	 
		//初始化课程 名称
		public String findCourse(){
			List<Course> courses=modelService.findCourse();
			HttpServletResponse response = getResponse();
			response.setContentType("text/html;charset=utf-8");
			 
			String json =JSON.toJSONString(courses);
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
