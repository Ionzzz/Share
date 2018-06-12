package com.gem.share.util.ueditor.controller;

import com.gem.share.util.ueditor.util.LoadPropertiesDataUtils;
import com.gem.share.util.ueditor.util.RandomUtils;
import com.gem.share.util.ueditor.util.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

/**
 * 上传图片的controller
 * @author liuyazhuang
 *
 */
@Controller
@RequestMapping(value="/ueditor/upload")
public class UploadImageController {

    /**
     * 上传图片
     * @param
     * @param request
     * @param response
     * @return
     */
    @ResponseBody
    @RequestMapping(value="/images")
    public Map<String, Object> images (MultipartFile upfile, HttpServletRequest request, HttpServletResponse response){
        System.out.println("到上传文件");
        Map<String, Object> params = new HashMap<String, Object>();
        try{
            String basePath = LoadPropertiesDataUtils.getValue("ifashion.uploading.url");
            String visitUrl = LoadPropertiesDataUtils.getValue("ifashion.visit.url");
            System.out.println(basePath);
            System.out.println(visitUrl);
            if(basePath == null || "".equals(basePath)){
                basePath = "E:/ifashion/static";  //与properties文件中lyz.uploading.url相同，未读取到文件数据时为basePath赋默认值
            }
            if(visitUrl == null || "".equals(visitUrl)){
                visitUrl = "/static/upload/images/"; //与properties文件中lyz.visit.url相同，未读取到文件数据时为visitUrl赋默认值
            }
            String ext = StringUtils.getExt(upfile.getOriginalFilename());
            String fileName = String.valueOf(System.currentTimeMillis()).concat("_").concat(RandomUtils.getRandom(6)).concat(".").concat(ext);
           StringBuilder sb = new StringBuilder();
            System.out.println(sb);
            System.out.println(fileName);
            System.out.println(ext);
            sb.append(basePath).append("/").append(fileName);
            visitUrl = visitUrl.concat(fileName);
            File f = new File(sb.toString());
            if(!f.exists()){
                f.getParentFile().mkdirs();
            }

            System.out.println(basePath);
            System.out.println("visitUrl:"+visitUrl);
            OutputStream out = new FileOutputStream(f);
            System.out.println(1+"ss");
            //      创建目标文件，制定文件存储路径和文件名
            //File targetFile = new File(visitUrl);
            //File targetFile2 = new File(basePath);
           // upfile.transferTo(targetFile);
          // upfile.transferTo(targetFile);

            FileCopyUtils.copy(upfile.getInputStream(), out);
            //FileCopyUtil.copyFileUsingFileStreams(targetFile2,targetFile);
            System.out.println(2+"ss");
            params.put("state", "SUCCESS");
            params.put("url", visitUrl);
            params.put("size", upfile.getSize());
            params.put("original", fileName);
            params.put("type", upfile.getContentType());
        } catch (Exception e){
            params.put("state", "ERROR");
        }
        System.out.println("到上传文件结束");
        return params;
    }


    //新文件名，添加原始文件名后缀
   // String newFileName = UUID.randomUUID() + originalFileName.substring(originalFileName.lastIndexOf("."));
    //创建新文件，路径为：图片服务器路径+新文件名
   // File newFile = new File(file_path + newFileName);

}