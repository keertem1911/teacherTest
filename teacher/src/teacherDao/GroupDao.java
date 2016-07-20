package teacherDao;

import java.util.List;
import java.util.Map;

import comment.BaseDao;
import empties.Group;
import empties.Student;

public class GroupDao extends BaseDao{

	public List<Group> selectGroupAll() {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("group.selectGroupAll");
	}

	public Group findGroupById(long id) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("group.findGroupById",id);
	}
	// http://localhost:8080/teacher/groupMa/set_group_home.jsp 查看详情
	public List<String> findGroupNamesById(List<String> ids){
		
		return sqlSessionTemplate.selectList("group.findGroupNamesById",ids);
	}

	public int saveG_Score(Map<String, Object> map) {
		// TODO Auto-generated method stub
		 
		return sqlSessionTemplate.update("group.saveG_Score",map);
	}

	public List<Student> findStudentsById(List<Long> list) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("student.findStudentsById",list);
	}

	public int updateAgreeOrDis(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.update("group.updateAgreeOrDis",map);
	}
	//更改状态
	public int updateStatus(String g_statu1){
		return sqlSessionTemplate.update("group.updateStatus",g_statu1);
	}

}
