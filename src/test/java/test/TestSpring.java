package test;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestSpring {
	@Test
	public void testTeacher() {
		/**
		 * login
		 */
//		 ApplicationContext ac = new ClassPathXmlApplicationContext(
//		 new String[] { "classpath:spring.xml",
//		 "classpath:spring-hibernate.xml" });
		// TeacherServiceI teacherService = (TeacherServiceI)
		// ac.getBean("teacherService");
		// Teacher teacher = new Teacher();
		// System.out.println(teacherService.login("1", "1"));
		//

	}

	@Test
	public void testStudent() {
		/**
		 * login
		 */
//		ApplicationContext ac = new ClassPathXmlApplicationContext(
//				new String[] { "classpath:spring.xml",
//						"classpath:spring-hibernate.xml" });
//		StudentServiceI service = (StudentServiceI) ac
//				.getBean("studentService");
//		Student student = new Student();
//		System.out.println(service.login("1", "1"));

	}
	@Test
	public void testProduct(){
		/**
		 * product
		 */
//		ApplicationContext ac = new ClassPathXmlApplicationContext(
//				new String[] { "classpath:spring.xml",
//						"classpath:spring-hibernate.xml" });
//		ProductServiceI service = (ProductServiceI) ac
//				.getBean("productService");
//		Product product = new Product();
//		String sql = "select count(product_id) from product";
//		System.out.println(service.getCount(sql));
//		
//		sql = "select product_id as productId,name,(SUBSTRING(des,1,33)) as des,price,pubtime from product "; 
//		System.out.println(service.findListBySql(sql).get(0).getDes());

	}
//	@Test
//	public void testAdmin() {
//		/**
//		 * login
//		 */
//		ApplicationContext ac = new ClassPathXmlApplicationContext(
//				new String[] { "classpath:spring.xml",
//						"classpath:spring-hibernate.xml" });
//		AdminServiceI service = (AdminServiceI) ac
//				.getBean("adminService");
//		
//		service.login("1", "1");
//
//	}
	
	public void testCrowd(){
		/**
		 * product
		 */
		System.out.println("abc");
		
//		ApplicationContext ac = new ClassPathXmlApplicationContext(
//				new String[] { "classpath:spring.xml",
//						"classpath:spring-hibernate.xml" });
//		CrowdServiceI service = (CrowdServiceI) ac
//				.getBean("crowdService");
//		Crowd crowd = new Crowd();
//		String sql = "select count(crowd_id) from crowd";
//		System.out.println(service.getCount(sql));
		
//		sql = "select crowd_id as crowdId,name,(SUBSTRING(des,1,33)) as des,pubtime from crowd "; 
//		System.out.println(service.findListBySql(sql).get(0).getDes());

	}
	
	@Test
	public void testUserAuth(){
		/**
		 * Auth
		 */
//		System.out.println("————————————————user auth————————————————");
//		
//		ApplicationContext ac = new ClassPathXmlApplicationContext(
//				new String[] { "classpath:spring.xml",
//						"classpath:spring-hibernate.xml" });
//		UserAuthServiceI service = (UserAuthServiceI) ac
//				.getBean("userAuthService");
//		
//		String hql = "from UserAuth where auth=0";
//	 
//		System.out.println("size:"+service.find(hql).size());

	}
}
