package com.lqsd.controller;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.lqsd.commons.Commons;
import com.lqsd.entity.Article;
import com.lqsd.entity.Image;
import com.lqsd.service.FacadeService;

/**
 * 
 * @author lijib
 * 
 */
@Controller
@RequestMapping("/home")
public class HomeController extends BaseFormController implements ServletContextAware {
	
	@Autowired
	private FacadeService facadeService;
	
	@RequestMapping(value = "/toSlideList")
	public ModelAndView toSlideList() {
		ModelAndView mv = new ModelAndView("/jsp/slide/list");
		List<Article> list = facadeService.getArticles(Commons.CHANEL_SLIDE);
		mv.addObject("list", list);
		return mv;
	}
	
	@RequestMapping(value = "/toSlideListFoot")
	public ModelAndView toSlideListFoot() {
		ModelAndView mv = new ModelAndView("/jsp/foot/list");
		List<Article> list = facadeService.getArticles(Commons.CHANEL_SLIDE_FOOT);
		mv.addObject("list", list);
		return mv;
	}
	
	@RequestMapping(value = "/toSlideAdd")
	public ModelAndView toAdd() {
		ModelAndView mv = new ModelAndView("/jsp/slide/add");
		return mv;
	}
	
	@RequestMapping(value = "/toSlideAddFoot")
	public ModelAndView toFootAdd() {
		ModelAndView mv = new ModelAndView("/jsp/foot/add");
		return mv;
	}
	
	@RequestMapping(value = "/toSlideUpdate")
	public ModelAndView toUpdate(String id) {
		ModelAndView mv = new ModelAndView("/jsp/slide/update");
		mv.addObject("article", facadeService.getArticle(id));
		return mv;
	}
	@RequestMapping(value = "/toSlideUpdateFoot")
	public ModelAndView toUpdateFoot(String id) {
		ModelAndView mv = new ModelAndView("/jsp/foot/update");
		mv.addObject("article", facadeService.getArticle(id));
		return mv;
	}
	
	@RequestMapping(value="/del", method=RequestMethod.GET)
	public String del(String id){
		facadeService.removeArticle(id);
		return "redirect: toSlideList" ;
	}
	
	@RequestMapping(value="/delFoot", method=RequestMethod.GET)
	public String delFoot(String id){
		facadeService.removeArticle(id);
		return "redirect: toSlideListFoot" ;
	}
	
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
    public String handleFileUpload(@RequestParam("title") String title,
    		@RequestParam("description") String description, boolean publish, int num,
            @RequestParam("file") MultipartFile file){
        if (!file.isEmpty()) {
        	String fileName = "";
        	if(file.getContentType().equals("image/jpeg")){
        		fileName =  + System.currentTimeMillis() + ".jpg";
        	}else{
        		System.out.println("do nothing!");
        	}
            try {
                byte[] bytes = file.getBytes();
                BufferedOutputStream stream =
                        new BufferedOutputStream(new FileOutputStream(new File(context.getRealPath("")
                        		+ File.separator +"upload" + File.separator + fileName)));
                stream.write(bytes);
                stream.close();
            } catch (Exception e) {
            	e.printStackTrace();
            }
            Image image = new Image();
            image.setUrl(fileName);
            facadeService.saveImage(image);
            
            Article article = new Article();
            article.setChannel(Commons.CHANEL_SLIDE);
            article.setNum(num);
            article.setTitle(title);
            article.setText(description);
            article.setImage(image);
            article.setPublished(publish);
            facadeService.saveArticle(article);
        } else {
        	return "redirect: toSlideAdd" ;
    	}
        return "redirect: toSlideList" ;
    }
	
	@RequestMapping(value="/addFoot", method=RequestMethod.POST)
    public String handleFileUploadFoot(@RequestParam("title") String title,
    		@RequestParam("description") String description, boolean publish, int num,
            @RequestParam("file") MultipartFile file){
        if (!file.isEmpty()) {
        	String fileName = "";
        	if(file.getContentType().equals("image/jpeg")){
        		fileName =  + System.currentTimeMillis() + ".jpg";
        	}else{
        		System.out.println("do nothing!");
        	}
            try {
                byte[] bytes = file.getBytes();
                BufferedOutputStream stream =
                        new BufferedOutputStream(new FileOutputStream(new File(context.getRealPath("")
                        		+ File.separator +"upload" + File.separator + fileName)));
                stream.write(bytes);
                stream.close();
            } catch (Exception e) {
            	e.printStackTrace();
            }
            Image image = new Image();
            image.setUrl(fileName);
            facadeService.saveImage(image);
            
            Article article = new Article();
            article.setChannel(Commons.CHANEL_SLIDE_FOOT);
            article.setNum(num);
            article.setTitle(title);
            article.setText(description);
            article.setImage(image);
            article.setPublished(publish);
            facadeService.saveArticle(article);
        } else {
        	return "redirect: toSlideAddFoot" ;
    	}
        return "redirect: toSlideListFoot" ;
    }
	
	@RequestMapping(value="/update", method=RequestMethod.POST)
    public String update(String id, @RequestParam("title") String title,
    		@RequestParam("description") String description, boolean publish, int num,
            @RequestParam("file") MultipartFile file){
		 Article article = facadeService.getArticle(id);
         Image image = article.getImage();
         facadeService.saveImage(image);
         article.setChannel(Commons.CHANEL_SLIDE);
         article.setNum(num);
         article.setTitle(title);
         article.setText(description);
         article.setImage(image);
         article.setPublished(publish);
        if (!file.isEmpty()) {
        	String fileName = "";
        	if(file.getContentType().equals("image/jpeg")){
        		fileName =  + System.currentTimeMillis() + ".jpg";
        	}else{
        		System.out.println("do nothing!");
        	}
            try {
                byte[] bytes = file.getBytes();
                BufferedOutputStream stream =
                        new BufferedOutputStream(new FileOutputStream(new File(context.getRealPath("")
                        		+ File.separator +"upload" + File.separator + fileName)));
                stream.write(bytes);
                stream.close();
            } catch (Exception e) {
            	e.printStackTrace();
            }
            image.setUrl(fileName);
            facadeService.saveImage(image);
        }
        facadeService.saveArticle(article);
        return "redirect: toSlideList" ;
    }
	@RequestMapping(value="/updateFoot", method=RequestMethod.POST)
    public String updateFoot(String id, @RequestParam("title") String title,
    		@RequestParam("description") String description, boolean publish, int num,
            @RequestParam("file") MultipartFile file){
		 Article article = facadeService.getArticle(id);
         Image image = article.getImage();
         facadeService.saveImage(image);
         article.setChannel(Commons.CHANEL_SLIDE_FOOT);
         article.setNum(num);
         article.setTitle(title);
         article.setText(description);
         article.setImage(image);
         article.setPublished(publish);
        if (!file.isEmpty()) {
        	String fileName = "";
        	if(file.getContentType().equals("image/jpeg")){
        		fileName =  + System.currentTimeMillis() + ".jpg";
        	}else{
        		System.out.println("do nothing!");
        	}
            try {
                byte[] bytes = file.getBytes();
                BufferedOutputStream stream =
                        new BufferedOutputStream(new FileOutputStream(new File(context.getRealPath("")
                        		+ File.separator +"upload" + File.separator + fileName)));
                stream.write(bytes);
                stream.close();
            } catch (Exception e) {
            	e.printStackTrace();
            }
            image.setUrl(fileName);
            facadeService.saveImage(image);
        }
        facadeService.saveArticle(article);
        return "redirect: toSlideListFoot" ;
    }
}
