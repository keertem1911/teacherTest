package teacherDao;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.poi.util.SystemOutLogger;
import org.mybatis.spring.SqlSessionTemplate;

import comment.BaseDao;
import empties.Course;
import empties.Question;
import empties.Test;
import empties.User;

public class UnitDao extends BaseDao{
	 
	public List<Question> findSelect( ){
		List<Question> questions=null;
		questions=sqlSessionTemplate.selectList("teacher.findSelect" );
		System.out.println(Arrays.asList(questions));
		return questions;
	}
	public int save(String ids, String name,String sno) {
		Map<String, String> map=new HashMap<>();
		map.put("ids", ids);
		map.put("name", name);
		map.put("sno", sno);
		int flag=sqlSessionTemplate.insert("teacher.save",map);
		return flag;
	}
	public List<Question> searchTest(List<String> list){
		System.out.println(list);
		
		List<Question> list1=sqlSessionTemplate.selectList("teacher.searchTest",list);
		return list1;
	}
	
	public List<Test> findTestById(String sno){
		List<Test> list=sqlSessionTemplate.selectList("teacher.findTestById",sno);
		return list;
	}
	public User logCheck(String sno, String passwd) {
		Map<String, String> map=new HashMap<>();
		map.put("sno", sno);
		map.put("passwd", passwd);
		User user=null;
		user=sqlSessionTemplate.selectOne("teacher.logCheck",map);
		
		return user;
		
	}
	public int addQuestion(Question question){
		
		int j=sqlSessionTemplate.insert("teacher.addQuestion",question);
		return j;
	}
	public List<Question> radomFindSelect(){
		List<Question> list=null;
		list=sqlSessionTemplate.selectList("teacher.findSelect");
		List<Question> list1=new ArrayList<>();
		List<Question> list2=new ArrayList<>();
		List<Question> list3=new ArrayList<>();
		List<Question> list4=new ArrayList<>();
		for (int i = 0; i < list.size(); i++) {
			String type=list.get(i).getTypes();
			switch(type){
			case "1": list1.add(list.get(i));
				break;
			case "2": list2.add(list.get(i));
				break;
			case "3": list3.add(list.get(i));
				break;
			case "4" : list4.add(list.get(i));
			}
		}
		Object []obj=new Object[4];
		obj[0]=list1;
		obj[1]=list2;
		obj[2]=list3;
		obj[3]=list4;
		Random random=new Random();
		boolean []b1=new boolean[list1.size()];
		boolean []b2=new boolean[list2.size()];
		boolean []b3=new boolean[list3.size()];
		boolean []b4=new boolean[list4.size()];
		int []number={5,5,2,1};
		boolean [][] b=new boolean[4][];
		b[0]=b1;
		b[1]=b2;
		b[2]=b3;
		b[3]=b4;
		list=new ArrayList<>();
		
		int count=0;
		for (int i = 0; i < number.length; i++) {
			count=0;
			while(count<number[i]){
				int idx=random.nextInt(b[i].length);
				//System.out.print(idx+" ");
				if(!b[i][idx]){
					@SuppressWarnings("unchecked")
					List<Question> temp=(List<Question>) obj[i];
					list.add(temp.get(idx));
					b[i][idx]=true;
					count++;
				}
				
			}
			//System.out.println();
		}
	//	System.out.println(Arrays.asList(list));
		return list;
	}
	public int updateByquestion(Question model) {
		
		return sqlSessionTemplate.update("teacher.updateByquestion",model);
	}
	public int updateBytest(Test test) {
		return sqlSessionTemplate.update("teacher.updateBytest",test);
		
	}
	public int deleteByquestion(long id) {
		// TODO Auto-generated method stub
		int i=sqlSessionTemplate.delete("teacher.deleteByquestion",id);
		return 0;
	}
	public int deleteByquestionInnerTest(long id) {
		String sno =sqlSessionTemplate.selectOne("teacher.findSno",id);
	 
		List<Test> list=sqlSessionTemplate.selectList("teacher.deleteByquestionInnerTest",sno);
		List<Long> list1=new ArrayList<>();
		 
		for (int i = 0; i < list.size(); i++) {
			String ids=list.get(i).getIds();
			ids=","+ids+",";
		 
			int j=ids.indexOf(","+id+",");
			 
			if(j>=0&&j<ids.length()){
				list1.add(list.get(i).getId());
			}
		
		}
		int i=0;
		if(list1.size()!=0){
		 
			i=sqlSessionTemplate.delete("teacher.deleteByquestionfortest",list1);
		}
		return i;
	}
	public int deleteBytest(long id) {
		 
		return sqlSessionTemplate.delete("teacher.deleteBytest",id);
	}
	public String findCourseById(int sno) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("teacher.findCourseById",sno);
	}
	public List<Course> findCourseBySno(String sno) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("teacher.findCourseBySno",sno);
	}
	
	 
}
	