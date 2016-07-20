package teacherDao;

import java.util.Arrays;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import comment.BaseDao;
import empties.StudentCourse;

public class StudentDao extends BaseDao{
	 

	public List<StudentCourse> showStudentAndGroup() {
		 List<StudentCourse> lists=sqlSessionTemplate.selectList("student.showStudentAndGroup");
		 System.out.println(Arrays.asList(lists));
		return lists;
	}

 
}
