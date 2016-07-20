package teacherAction;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;

import comment.BaseAction;
import empties.TaskToplan;
import empties.Title;
import teacherService.TitleService;

public class TitlePlanAction extends BaseAction<Title>{
	private TitleService titleService;

	public TitleService getTitleService() {
		return titleService;
	}

	public void setTitleService(TitleService titleService) {
		this.titleService = titleService;
	}
	//查看各任务详情
		public String lookDetailTitleToTask(){
			List<Title> tasks=titleService.lookDetailTitleToTask(model.getT_id());
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
		//删除 题目
		public String deleteTitlePlan(){
			int i=titleService.deleteTitlePlan(model.getTit_id());
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
		//从模板中添加 任务中的  题目 
		public String addTitle(){
			int i=titleService.addTitle(model);
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
	 
		 
}
