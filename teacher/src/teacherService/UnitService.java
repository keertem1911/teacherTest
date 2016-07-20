package teacherService;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import empties.Course;
import empties.Question;
import empties.Test;
import empties.User;
import teacherDao.UnitDao;

public class UnitService {
	private UnitDao unitDao;
	public UnitDao getUnitDao() {
		return unitDao;
	}
	public void setUnitDao(UnitDao unitDao) {
		this.unitDao = unitDao;
	}
	public List<Question> findSelect(String idx_1){
		List<Question> list=null;
		if("50".equals(idx_1.trim())){
			list=unitDao.findSelect();;
		}else if("100".equals(idx_1)){
			list=unitDao.radomFindSelect();
		}
		return list; 
		
	}
	public int  save(String ids,String name,String sno) {

		return unitDao.save(ids,name,sno);
	}
	public List<Question> searchTest(String ids){
		List<String> list=new ArrayList<>();
		String [] idsStr=ids.split(",");
		for (int i = 0; i < idsStr.length; i++) {
			list.add(idsStr[i]);
		}
		System.out.println(Arrays.asList(list+"         test0515"));
		return unitDao.searchTest(list);
	}
	public List<Test> findTestById(String sno){
		return unitDao.findTestById(sno);
	}
	public User logCheck(String sno, String passwd) {
		return  unitDao.logCheck(sno,passwd);
		
	}
	public int addQuestion(Question question){
		return unitDao.addQuestion(question);
		
	}
	public int updateByquestion(Question model) {
		return unitDao.updateByquestion(model);
		
	}
	public int updateBytest(Question model) {
		Test test=new Test();
		test.setIds(model.getTypes());
		test.setName(model.getTxt());
		test.setId(model.getId());
		return unitDao.updateBytest(test);
		
	}
	public int deleteByquestion(long id) {
	
		int j=unitDao.deleteByquestionInnerTest(id);
		int i=unitDao.deleteByquestion(id);
		return i+j;
	}
	public int deleteBytest(long id) {
		
		return unitDao.deleteBytest(id);
	}
	public String findCourseById(int sno) {
		// TODO Auto-generated method stub
		return unitDao.findCourseById(sno);
	}
	public List<Course> findCourseBySno(String sno) {
		// TODO Auto-generated method stub
		return unitDao.findCourseBySno(sno);
	}
	
 
}
