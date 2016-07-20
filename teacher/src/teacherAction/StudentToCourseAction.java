package teacherAction;

import comment.BaseAction;
import empties.StudentToCourse;
// 模块5  录入和查看成绩
import teacherService.StudentToCourseService;
public class StudentToCourseAction extends BaseAction<StudentToCourse>{
		private StudentToCourseService studentToCourseService;

		public StudentToCourseService getStudentToCourseService() {
			return studentToCourseService;
		}

		public void setStudentToCourseService(StudentToCourseService studentToCourseService) {
			this.studentToCourseService = studentToCourseService;
		}
		
}
