package teacherService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import empties.Group;
import empties.TaskToplan;
import teacherDao.TaskToPlanDao;

public class TaskToPlanService {
	private TaskToPlanDao taskToPlanDao;

	public TaskToPlanDao getTaskToPlanDao() {
		return taskToPlanDao;
	}

	public void setTaskToPlanDao(TaskToPlanDao taskToPlanDao) {
		this.taskToPlanDao = taskToPlanDao;
	}

	public int deleteByTaskToPlan(long t_id) {
		// TODO Auto-generated method stub
		int i=taskToPlanDao.deleteByTitle(t_id); 
		i+=taskToPlanDao.deleteByTaskToPlan(t_id);
		return i;
	}

	public int updateByTaskToPlan(TaskToplan model) {
		// TODO Auto-generated method stub
		return taskToPlanDao.updateByTaskToPlan(model);
	}

	public List<Group> findGroupsByTask(long t_id) {
		// TODO Auto-generated method stub
		return taskToPlanDao.findGroupsByTask(t_id);
	}

	public int saveGroupByTask(long t_id, String g_id, String s_score) {
		// TODO Auto-generated method stub
		Map<String, Object> map=new HashMap<>();
		map.put("g_id", g_id);
		map.put("t_id", t_id);
		map.put("s_score", s_score);
		return taskToPlanDao.saveGroupByTask(map);
	}
	
}
