package teacherAction;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;

import comment.BaseAction;
import empties.Title;
import teacherService.TitleService;

public class TitleModelAction extends BaseAction<Title>{
	private TitleService titleService;

	public TitleService getTitleService() {
		return titleService;
	}

	public void setTitleService(TitleService titleService) {
		this.titleService = titleService;
	}
	
	//查看模板中各任务详情即 各个题目
			public String lookDetailTitleToModel(){
				List<Title> tasks=titleService.lookDetailTitleToModel(model.getT_id());
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
		
}
