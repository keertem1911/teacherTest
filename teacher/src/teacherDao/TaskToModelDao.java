package teacherDao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import comment.BaseDao;
import empties.Model;
import empties.TaskTomodel;

public class TaskToModelDao extends BaseDao{

	public int addTaskToModel(TaskTomodel model) {

		int i =sqlSessionTemplate.insert("taskTomodel.addTaskToModel",model);
		return i;
	}

	public Model findModelByID(long m_id) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("taskTomodel.findModelByID",m_id);
	}

	public List<TaskTomodel> findTaskByModel(long m_id) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("taskTomodel.findTaskByModel",m_id);
	}

}
