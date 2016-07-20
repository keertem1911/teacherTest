package teacherService;

import teacherDao.StudentToCourseDao;

public class StudentToCourseService {
	private StudentToCourseDao studentToCourseDao;

	public StudentToCourseDao getStudentToCourseDao() {
		return studentToCourseDao;
	}

	public void setStudentToCourseDao(StudentToCourseDao studentToCourseDao) {
		this.studentToCourseDao = studentToCourseDao;
	}
	
}
