package p1;

import org.springframework.beans.BeansException;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Launch {

	public static void main(String[] args) {
		
		try (ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("beans.xml")) {
			Student s = (Student) context.getBean("s1");
			System.out.println(s.getName());
			System.out.println(s.getAge());
		} catch (BeansException e) {
			
			e.printStackTrace();
		}
	}
}
