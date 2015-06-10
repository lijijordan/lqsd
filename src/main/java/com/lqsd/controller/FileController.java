package com.lqsd.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.lqsd.commons.FileMeta;

@Controller
@RequestMapping("/controller")
public class FileController  extends BaseFormController {

	FileMeta fileMeta = null;

	/***************************************************
	 * URL: /rest/controller/upload upload(): receives files
	 * 
	 * @param request
	 *            : MultipartHttpServletRequest auto passed
	 * @param response
	 *            : HttpServletResponse auto passed
	 * @return LinkedList<FileMeta> as json format
	 ****************************************************/
	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public @ResponseBody
	Map<String, LinkedList<FileMeta>> upload(MultipartHttpServletRequest request,
			HttpServletResponse response) {
		LinkedList<FileMeta> files = new LinkedList<FileMeta>();
		Map<String, LinkedList<FileMeta>> result = new HashMap<String, LinkedList<FileMeta>>();
		// 1. build an iterator
		Iterator<String> itr = request.getFileNames();
		MultipartFile mpf = null;

		// 2. get each file
		while (itr.hasNext()) {

			// 2.1 get next MultipartFile
			mpf = request.getFile(itr.next());
			System.out.println(mpf.getOriginalFilename() + " uploaded! "
					+ files.size());

			// 2.2 if files > 10 remove the first from the list
			if (files.size() >= 10)
				files.pop();

			// 2.3 create new fileMeta
			fileMeta = new FileMeta();
			fileMeta.setName(mpf.getOriginalFilename());
			fileMeta.setSize(mpf.getSize() / 1024 + " Kb");
			fileMeta.setType(mpf.getContentType());
			fileMeta.setUrl(context.getContextPath() + File.separator +"upload" + File.separator + mpf.getOriginalFilename());
			fileMeta.setThumbnailUrl(context.getContextPath() + File.separator +"upload" + File.separator + mpf.getOriginalFilename());

			try {
				fileMeta.setBytes(mpf.getBytes());

				// copy file to local disk (make sure the path
				// "e.g. D:/temp/files" exists)
				FileCopyUtils.copy(mpf.getBytes(), new FileOutputStream(
						context.getRealPath("") + File.separator +"upload" + File.separator + mpf.getOriginalFilename()));

			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			// 2.4 add to files
			files.add(fileMeta);
		}
		// result will be like this
		// [{"fileName":"app_engine-85x77.png","fileSize":"8 Kb","fileType":"image/png"},...]
		result.put("files", files);
		return result;
	}

}