package teacherService;

import java.util.List;

import empties.StudentCourse;
import teacherDao.StudentDao;

public class StudentService {
	private StudentDao studentDao;

	public StudentDao getStudentDao() {
		return studentDao;
	}

	public void setStudentDao(StudentDao studentDao) {
		this.studentDao = studentDao;
	}

	public List<StudentCourse> showStudentAndGroup() {
		// TODO Auto-generated method stub
		return studentDao.showStudentAndGroup();
	}
	
}
