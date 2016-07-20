package teacherAction;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.alibaba.fastjson.JSON;

import comment.BaseAction;
import empties.Group;
import teacherService.GroupService;

public class GroupAction extends BaseAction<Group>{
	private String uploadFileName;
	private File upload;
	
	public String getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public File getUpload() {
		return upload;
	}

	public void setUpload(File upload) {
		this.upload = upload;
	}
	private GroupService groupService;

	public GroupService getGroupService() {
		return groupService;
	}

	public void setGroupService(GroupService groupService) {
		this.groupService = groupService;
	}
	// 初始化 所有小组信息
	public String selectGroupAll(){
		
		List<Group> groups=groupService.selectGroupAll();
		HttpServletResponse response = getResponse();
		response.setContentType("text/html;charset=utf-8");
		Map<String, Integer> map=new HashMap<>();
		 
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
	//通过 小组 id查询小组 
	public String  findGroupById(){
		
		 Group group=groupService.findGroupById(model.getG_id());
		HttpServletResponse response = getResponse();
		response.setContentType("text/html;charset=utf-8");
		Map<String, Integer> map=new HashMap<>();
		 
		String json =JSON.toJSONString(group);
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
//保存成绩
 	public String saveG_Score(){
 		int i=1;//groupService.saveG_Score(model.getG_id(),model.getG_score());
 		Map<String , Object> map=new HashMap<>();
 		map.put("statu", i);
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
 	//查找 小组的详细信息 包括小组成员的名字  
 	public String findDetailGroupById(){
 		
 		Map<String , Object> map= groupService.findDetailGroupById(model.getG_id());
 		 
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
 	//更 新同意 /不同意 
 	public String updateAgreeOrDis(){
		int i=groupService.updateAgreeOrDis(model);
 		HttpServletResponse response = getResponse();
	response.setContentType("text/html;charset=utf-8");
	Map<String , Object> map=new HashMap<>();
		map.put("statu", i);
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
 	//上传
 	public String upload(){
	int j=groupService.saveG_Score(model.getG_id(),model.getG_score());
 		System.out.println(upload+"  as");
 		HttpServletRequest request = getRequest();
 		HttpServletResponse response = getResponse();
 		PrintWriter pw = null;
 		try {
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset=utf-8");
			String newfilename=model.getG_id()+".doc";
			String realpath =ServletActionContext.getServletContext().
					getRealPath("")+"/file/";
			FileInputStream fis=new FileInputStream(upload);
			File file=new File(realpath);
			System.out.println(realpath);
			FileOutputStream fos=new FileOutputStream(realpath+newfilename);
			pw=getResponse().getWriter();
			int i=0;
			byte [] b=new byte[1024];
			while((i=fis.read(b))!=-1){
				fos.write(b,0,i);
			}
			fos.flush();
			fos.close();
			fis.close();
			pw.write("1");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			try {
				pw.write("-1");
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}finally{
			if(pw!=null){
				pw.close();
			}
		}
 		return null;
 		
 	}
 	// 下载   "application/msword"
 	public String download(){
 		
 		
 		HttpServletRequest request = getRequest();
 		HttpServletResponse response = getResponse();
 		PrintWriter pw = null;
 		try {
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset=utf-8");
			response.setContentType("application/octet-stream;charset=utf-8");
				String realpath =ServletActionContext.getServletContext().
						getRealPath("")+"/file/";
				FileInputStream fis=new FileInputStream(realpath+model.getG_name()+".doc");
				response.setHeader("Content-Disposition", "attachment;filename="+new String(model.getG_name()));
				// 创建输出流对象
				OutputStream fos = response.getOutputStream();
				int i=0;
				 System.out.println(realpath+model.getG_name()+".doc");
				byte [] b=new byte[1024*5];
				while((i=fis.read(b))!=-1){
					System.out.println(i);
					fos.write(b,0,i);
				}
				fos.flush();
			 
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return null;
 		
 	}
}
