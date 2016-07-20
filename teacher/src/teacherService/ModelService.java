package teacherService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import empties.Course;
import empties.Model;
import empties.TaskTomodel;
import teacherDao.ModelDao;

public class ModelService {
	private ModelDao modelDao;

	public ModelDao getModelDao() {
		return modelDao;
	}

	public void setModelDao(ModelDao modelDao) {
		this.modelDao = modelDao;
	}

	public List<Model> selectCourseLIst() {
		 
		return modelDao.selectCourseLIst();
	}

	public int addModel(Model model) {
		// TODO Auto-generated method stub
		return modelDao.addModel(model);
	}

	public int deleteModel(long m_id) {
		// TODO Auto-generated method stub
		return modelDao.deleteModel(m_id);
	}

	public Map<String, Object> lookDetail(long m_id) {
		Map<String, Object> map=new HashMap<>();
		Model model=modelDao.lookDetailModel(m_id);
		List<TaskTomodel> task=modelDao.lookDetailTaskToModel(m_id);
		map.put("model", model);
		map.put("task",task);
		return map;
	}

	public int addToPlan(long m_id) {
		// TODO Auto-generated method stub
		return modelDao.addToPlan(m_id);
	}

	public List<Course> findCourse() {
		return modelDao.findCourse();
	}
	
	 
	}
