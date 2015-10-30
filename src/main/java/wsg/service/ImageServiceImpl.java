package wsg.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import wsg.dao.BaseDaoI;
import wsg.model.Image;

@Service("imageService")
public class ImageServiceImpl extends BaseServiceImpl<Image> implements ImageServiceI {
	
	@Autowired
	private BaseDaoI<Image> imageDaoI;
	private List<Image> imgs;
	private Image img;

	@Override
	public Image addImage(Image img) {
		imageDaoI.save(img);
		return img;
	}
	@Override
	public List<Image> addImages(List<Image> imgs) {
		for (int i = 0;i < imgs.size();i++)
			imageDaoI.save(imgs.get(i));
		return imgs;
	}
	@Override
	public boolean updateImage(Image img) {
		imageDaoI.update(img);
		return true;
	}
	@Override
	public boolean updateImages(List<Image> imgs) {
		for (int i = 0;i < imgs.size();i++)
			imageDaoI.update(imgs.get(i));
		return true;
	}
	@Override
	public boolean deleteImage(Image img) {
		imageDaoI.delete(img);
		return true;
	}
	@Override
	public boolean deleteImage(List<Image> imgs) {
		for (int i = 0;i < imgs.size();i++)
			imageDaoI.delete(imgs.get(i));
		return true;
	}
	@Override
	public Image getById(Integer id) {
		img = imageDaoI.getById(Image.class, id);
		return img;
	}
	@Override
	public List<Image> getByIds(List<Integer> ids) {
		for (int i = 0;i < ids.size();i++)
			imgs.add(imageDaoI.getById(Image.class, ids.get(i)));
		return imgs;
	}
}
