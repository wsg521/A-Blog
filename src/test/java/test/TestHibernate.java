package test;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.imageio.ImageIO;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import wsg.model.Blog;
import wsg.model.Image;
import wsg.service.BlogServiceI;
import wsg.service.ImageServiceI;
import wsg.service.UserServiceI;

public class TestHibernate {

	@Test
	public void test_dao() {
//		 ApplicationContext ac = new ClassPathXmlApplicationContext(new
//		 String[]{"classpath:spring.xml","classpath:spring-hibernate.xml"});
////		 UserServiceI userServiceI = (UserServiceI) ac.getBean("userService");
//		 BlogServiceI blogServiceI = (BlogServiceI) ac.getBean("blogService");
//		 List<Blog> blogList = blogServiceI.findAll();
//		 for (int i = 0;i < blogList.size();i++) {
//			 System.out.println("第 " + (i+ 1) + "个：");
//			 System.out.println(blogList.get(i).getContent());
//			 System.out.println(blogList.get(i).getCreateTime());
//		 }
	}

	@Test
	public void test_one2one() {
		/**
		 * Topic -> Technosphere
		 */
//		 ApplicationContext ac = new ClassPathXmlApplicationContext(
//		 new String[] { "classpath:spring.xml",
//		 "classpath:spring-hibernate.xml" });
//		 BaseServiceI baseService = (BaseServiceI) ac.getBean("baseService");
//		 Topic topic = new Topic();
//		 Technosphere tech = new Technosphere();
//		 tech.setName("ios");
//		 topic.setTechnosphere(tech);
//		 baseService.save(topic);

		/**
		 * Topic -> Technosphere
		 */
//		ApplicationContext ac = new ClassPathXmlApplicationContext(
//				new String[] { "classpath:spring.xml",
//						"classpath:spring-hibernate.xml" });
//		BaseServiceI baseService = (BaseServiceI) ac.getBean("baseService");
//		DocumentsId  docId= new DocumentsId("201107092436","111");
//		Documents doc = new Documents();
//		doc.setId(docId);
//		DocType docTpye = new DocType();
//		docTpye.setDname("world");
//		doc.setDocType(docTpye);
//		baseService.save(doc);

	}
	
//	@Test
//	public void getImage() {
//		ApplicationContext ac = new ClassPathXmlApplicationContext(
//				new String[] { "classpath:spring.xml",
//						"classpath:spring-hibernate.xml" });
//		ImageServiceI imageService = (ImageServiceI) ac.getBean("imageService");
//		Image img = imageService.getById(1);
//		for (int i = 0;i < img.getImg().length;i++)
//			System.out.print(img.getImg()[i]);
//	}
//	
//	@Test
//	public void testImage() {
//		ApplicationContext ac = new ClassPathXmlApplicationContext(
//				new String[] { "classpath:spring.xml",
//						"classpath:spring-hibernate.xml" });
//		ImageServiceI imageService = (ImageServiceI) ac.getBean("imageService");
//		List<Image> imgs = new ArrayList<Image>();
//		Image img = new Image();		
//		img.setImg(image2Bytes("src/main/webapp/imgs/bd_wsg1.jpg","jpg"));
//		imgs.add(img);
//		
//		img = new Image();		
//		img.setImg(image2Bytes("src/main/webapp/imgs/bd_wsg2.jpg","jpg"));
//		imgs.add(img);
//		
//		img = new Image();		
//		img.setImg(image2Bytes("src/main/webapp/imgs/bjslgy.jpg","jpg"));
//		imgs.add(img);
//		
//		img = new Image();		
//		img.setId(7);
//		img.setImg(image2Bytes("src/main/webapp/imgs/WSG.jpg","jpg"));
//		imgs.add(img);
//		
//		imageService.updateImage(img);
//		//imageService.addImages(imgs);		
//		
//	}
//	
//	public static  byte[] image2Bytes(String imagePath, String mode) {  
//		byte[] tagInfo = null;
//        try {   
//            BufferedImage bu=ImageIO.read(new File(imagePath));  
//            ByteArrayOutputStream imageStream = new ByteArrayOutputStream(); 
//            boolean resultWrite = ImageIO.write(bu, mode, imageStream);  
//            imageStream.flush();  
//           	tagInfo = imageStream.toByteArray();
//        } catch (Exception e) {  
//            e.printStackTrace();  
//        } finally {
//        	return tagInfo; 
//        }
//	}   
	
}
