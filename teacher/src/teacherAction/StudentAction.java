package teacherAction;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.alibaba.fastjson.JSON;

import comment.BaseAction;
import empties.Student;
import empties.StudentCourse;
// 查看和审核 学生分组
import teacherService.StudentService;
public class StudentAction  extends BaseAction<Student>{
	 private StudentService studentService;

	public StudentService getStudentService() {
		return studentService;
	}

	public void setStudentService(StudentService studentService) {
		this.studentService = studentService;
	}
	 public String show(){
		 List<StudentCourse> lists=studentService.showStudentAndGroup();
		 String json=JSON.toJSONString(lists);
			HttpServletResponse response = ServletActionContext.getResponse();
			response.setContentType("text/html;charset=utf-8");
			PrintWriter pw =null;
			try {
				pw= response.getWriter();
				pw.write( json);
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
