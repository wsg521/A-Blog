package wsg.util;

import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.imageio.ImageIO;

public class Photo2Byte {
	
	public static Image Bytes2image(byte[] b) {
		Image im = null;
		try {
			FileOutputStream fout = new FileOutputStream("p.jpg");
		    //将字节写入文件
		    fout.write(b);
		    fout.close();
		} catch (Exception e) {  
            e.printStackTrace();  
        } finally {
        	return im; 
        }
	}
	
	public static  byte[] image2Bytes(File imageFile) {  
		byte[] tagInfo = null;
        try {   
            BufferedImage bu=ImageIO.read(imageFile);  
            ByteArrayOutputStream imageStream = new ByteArrayOutputStream(); 
            boolean resultWrite = ImageIO.write(bu, "jpg", imageStream);  
            imageStream.flush();  
           	tagInfo = imageStream.toByteArray();
        } catch (Exception e) {  
            e.printStackTrace();  
        } finally {
        	return tagInfo; 
        }
	}   
	
}
