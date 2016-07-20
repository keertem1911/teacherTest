package teacherService;

import java.util.List;

import empties.Eduplan;
import empties.TaskToplan;
import teacherDao.EduPlanDao;

public class EduplanService {
	private EduPlanDao eduPlanDao;

	public EduPlanDao getEduPlanDao() {
		return eduPlanDao;
	}

	public void setEduPlanDao(EduPlanDao eduPlanDao) {
		this.eduPlanDao = eduPlanDao;
	}

	public List<Eduplan> selectEduPlan() {
		// TODO Auto-generated method stub
		return eduPlanDao.selectEduPlan();
	}

	public List<TaskToplan> lookDetailTaskToEduplan(long m_id) {
		// TODO Auto-generated method stub
		return eduPlanDao.lookDetailTaskToEduplan(m_id);
	}

	public int deleteEduPlan(long m_id) {
		// TODO Auto-generated method stub
		return eduPlanDao.deleteEduPlan(m_id);
	}

	public Eduplan findEduPlanById(long m_id) {
		// TODO Auto-generated method stub
		return eduPlanDao.findEduPlanById(m_id);
	}

	public int updateEduPlan(Eduplan model) {
		// TODO Auto-generated method stub
		return eduPlanDao.updateEduPlan(model);
	}

	public int addEduPlan(Eduplan model) {
		// TODO Auto-generated method stub
		return eduPlanDao.addEduPlan(model);
	}

	public List<Eduplan> findEduPlanByCourse(int cid) {
		// TODO Auto-generated method stub
		return eduPlanDao.findEduPlanByCourse(cid);
	}
	
}
