package teacherService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import empties.Model;
import empties.TaskTomodel;
import teacherDao.TaskToModelDao;

public class TaskToModelService {
	private TaskToModelDao taskToModelDao;

	public TaskToModelDao getTaskToModelDao() {
		return taskToModelDao;
	}

	public void setTaskToModelDao(TaskToModelDao taskToModelDao) {
		this.taskToModelDao = taskToModelDao;
	}

	public int addTaskToModel(TaskTomodel model) {
		// TODO Auto-generated method stub
		return taskToModelDao.addTaskToModel(model);
	}

	public Map<String, Object> selectTaskToModel(long m_id) {
		Map<String, Object> map=new HashMap<>();
		Model model=taskToModelDao.findModelByID(m_id);
		map.put("model", model);
		List<TaskTomodel> list=taskToModelDao.findTaskByModel(m_id);
		map.put("tasks", list);
		return map;
	}
	
}
