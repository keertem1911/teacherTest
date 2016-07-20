package teacherDao;

import java.util.List;
import java.util.Map;

import comment.BaseDao;
import empties.Group;
import empties.TaskToplan;

public class TaskToPlanDao extends BaseDao{

	public int deleteByTaskToPlan(long t_id) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.delete("tasktoplan.deleteByTaskToPlan",t_id);
	}

	public int updateByTaskToPlan(TaskToplan model) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.update("tasktoplan.updateByTaskToPlan",model);
	}

	public int deleteByTitle(long t_id) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.delete("tasktoplan.deleteByTitle",t_id);
	}

	public List<Group> findGroupsByTask(long t_id) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("tasktoplan.findGroupsByTask",t_id);
	}

	public int saveGroupByTask(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.update("tasktoplan.saveGroupByTask",map);
	}

}
