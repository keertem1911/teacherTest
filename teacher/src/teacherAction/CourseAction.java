package teacherAction;

import comment.BaseAction;
import empties.Course;
// 模块4 查看某门课程某学期所有的教学计划
import teacherService.CourseService;
public class CourseAction extends BaseAction<Course>{
	private CourseService courseService;

	public CourseService getCourseService() {
		return courseService;
	}

	public void setCourseService(CourseService courseService) {
		this.courseService = courseService;
	}
	
}
