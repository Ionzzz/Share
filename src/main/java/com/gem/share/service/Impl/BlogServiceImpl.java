package com.gem.share.service.Impl;

import com.gem.share.dao.BlogContentMapper;
import com.gem.share.dao.BlogLabelMapper;
import com.gem.share.dao.BlogPicsMapper;
import com.gem.share.dao.LabelInfoMapper;
import com.gem.share.entity.BlogContent;
import com.gem.share.entity.BlogLabel;
import com.gem.share.entity.BlogUserPicsLabel;
import com.gem.share.entity.LabelInfo;
import com.gem.share.service.BlogService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Service
public class BlogServiceImpl implements BlogService {

    @Autowired
    private BlogContentMapper blogContentMapper;
    @Autowired
    private BlogPicsMapper blogPicsMapper;
    @Autowired
    private BlogLabelMapper blogLabelMapper;
    @Autowired
    private LabelInfoMapper labelInfoMapper;

    @Override//查询浏览量最高的一条
    public BlogUserPicsLabel selectOneBlogOrderBlogBrowse() {
        BlogUserPicsLabel blogUserPicsLabel =blogContentMapper.selectOneBlogOrderBlogBrowse();
        return blogUserPicsLabel;
    }

    @Override
    public String selectPicByBlogPicsId(int blogPics_id) {
        return blogPicsMapper.selectPicByBlogPicsId(blogPics_id);
    }

    @Override//查询前几条数据
    public List<BlogUserPicsLabel> selectBlogCountOrderZan(int count) {
        List<BlogUserPicsLabel> blogUserPicsLabels=blogContentMapper.selectBlogCountOrderZan(count);
        return blogUserPicsLabels ;
    }

    @Override
    public List<BlogUserPicsLabel> selectBlogCountOrderLiulan(int count) {
        List<BlogUserPicsLabel> blogUserPicsLabels=blogContentMapper.selectBlogCountOrderLiulan(count);
        return blogUserPicsLabels;
    }

    @Override
    public List<BlogUserPicsLabel> selectBlogCountOrderPinglun(int count) {
        List<BlogUserPicsLabel> blogUserPicsLabels=blogContentMapper.selectBlogCountOrderPinglun(count);
        return blogUserPicsLabels;
    }

    @Override
    public PageInfo<BlogUserPicsLabel> selectAllBlogUserPicsByPage(Map<String, Object> map) {
        int curPage= (int) map.get("curPage");
        int pageSize= (int) map.get("pageSize");
        PageHelper.startPage(curPage,pageSize);
        List<BlogUserPicsLabel> list=blogContentMapper.selectOrderBlogUserPics();
        PageInfo<BlogUserPicsLabel> pageInfo=new PageInfo<>(list);

        return pageInfo;
    }

    @Override
    public PageInfo<BlogUserPicsLabel> selectAllBlogUserPicsByPageLabelName(Map<String, Object> map) {

        String labelId= (String) map.get("labelId");
        LabelInfo labelInfo=labelInfoMapper.selectLabelByLabelId(Integer.parseInt(labelId));
        String labelname=labelInfo.getLabelname();
        int curPage= (int) map.get("curPage");
        int pageSize= (int) map.get("pageSize");
        PageHelper.startPage(curPage,pageSize);
        List<BlogUserPicsLabel> list=selectBlogUserPicsByLabelName(labelname);
        PageInfo<BlogUserPicsLabel> pageInfo=new PageInfo<>(list);

        return pageInfo;
    }



    @Override
    public List<BlogUserPicsLabel> selectBlogUserPicsByLabelName(String labelName) {

        List<BlogUserPicsLabel> blogUserPicsLabels=blogContentMapper.selectBlogUserPicsLabelByLabelName(labelName);
      /*
        List<BlogLabel> blogLabels=blogLabelMapper.selectBlogByLabelName(labelName);
        List<BlogUserPicsLabel> blogUserPicLabels =new ArrayList<>();
        for(BlogLabel blogLabel:blogLabels){
            BlogUserPicsLabel blogUserPic=blogContentMapper.selectBlogUserPicsByBlogId(blogLabel.getBlogId());
            if(blogUserPic==null){
                System.out.println("blog_id为"+blogLabel.getBlogId()+"-------赞/评论/浏览---至少有一项为空");
            }else {
                blogUserPicLabels.add(blogUserPic);
            }
        }*/
        return blogUserPicsLabels;
    }

    @Override//返回指定数量的指定标签名的BlogUserPics
    public List<BlogUserPicsLabel> selectBlogUserPicsCountByLabelName(String labelName, int count) {
        List<BlogUserPicsLabel> list=selectBlogUserPicsByLabelName(labelName);
        List<BlogUserPicsLabel> blogUserPicLabels =new ArrayList<>();
        for(int i=0;i<count;i++){
            blogUserPicLabels.add(list.get(i));
        }
        return blogUserPicLabels;
    }

    @Override//标签id查询博客集合
    public List<BlogContent> selectBlogByLabelId(int label_id) {
        List<BlogLabel> blogLabels=blogLabelMapper.selectBlogByLabelId(label_id);
        List<BlogContent> blogContents=new ArrayList<>();
        for(BlogLabel blogLabel:blogLabels){
            BlogContent blogContent=blogContentMapper.selectBlogByBlogId(blogLabel.getBlogId());
            blogContents.add(blogContent);
        }
        return blogContents;
    }

    @Override//标签名称查询博客集合
    public List<BlogContent> selectBlogByLabelName(String labelName) {
        List<BlogLabel> blogLabels=blogLabelMapper.selectBlogByLabelName(labelName);
        List<BlogContent> blogContents=new ArrayList<>();
        for(BlogLabel blogLabel:blogLabels){
            BlogContent blogContent=blogContentMapper.selectBlogByBlogId(blogLabel.getBlogId());
            blogContents.add(blogContent);
        }
        return blogContents;
    }


    @Override
    public BlogContent updateBlogByBlogId(int blog_id) {
        return null;
    }

    @Override
    public List<BlogContent> selectAllBlog() {
        return blogContentMapper.selectAllBlog();
    }

    @Override
    public BlogContent selectBlogByBlogId(int blog_id) {

        return blogContentMapper.selectBlogByBlogId(blog_id);
    }

    @Override
    public BlogUserPicsLabel selectBlogUserPicsByBlogId(int blog_id) {

        return blogContentMapper.selectBlogUserPicsByBlogId(blog_id);
    }

    @Override//通过博客id 查询该博客上所有标签名称
    public List<String> selectBlogLabelNameByBlogId(int blog_id) {
        List<Integer> listId=selectLabelIdByBlogId(blog_id);
        List<String> listName=new ArrayList<>();
        for(Integer i:listId){
            String s= labelInfoMapper.selectLabelByLabelId(i).getLabelname();
            listName.add(s);
        }
        return listName;
    }

    @Override
    public boolean deleteBlogByBlogId(int blog_id) {
        return blogContentMapper.deleteBlogByBlogId(blog_id);
    }

    @Override
    public boolean insertBlog(BlogContent blogContent) {
        return false;
    }

    @Override
    public Date selectBlogCreateTimeByBlogId(int blog_id) {
        return blogContentMapper.selectBlogCreateTimeByBlogId(blog_id);
    }

    @Override//按照发布时间排序0
    public List<BlogUserPicsLabel> orderBlogByCreateTime() {

        return null;
    }

    @Override
    public Integer selectBlogPicsByBlogId(int blog_id) {
        return blogPicsMapper.selectBlogPicsIdByBlogId(blog_id);
    }

    @Override
    public List<Integer> selectLabelIdByBlogId(int blog_id) {

        return blogLabelMapper.selectLabelIdByBlogId(blog_id);
    }

    @Override
    public List<Integer> selectZanUserIdByBlogId(int blog_id) {
        return null;
    }

    @Override
    public Date selectZanTimeByBlogId(int blog_id, int user_id) {
        return null;
    }

    @Override
    public List<Integer> selectCommentIdByBlogId(int blog_id) {
        return null;
    }

    @Override
    public List<Integer> selectBlogCommentUserByBlogId(int blog_id) {
        return null;
    }

    @Override
    public List<String> selectCommentContentByBlogId(int blog_id) {
        return null;
    }

    @Override
    public List<Integer> selectCommentUserIdByCommentId(int comment_id) {
        return null;
    }

    @Override
    public String selectCommentContentByCommentId(int comment_id) {
        return null;
    }

    @Override
    public Date selectCommentTimeByCommentId(int comment_id) {
        return null;
    }

    @Override
    public List<Integer> selectZanUserIdByCommentId(int comment_id) {
        return null;
    }

    @Override
    public List<Integer> selectCommentByUserId(int user_id) {
        return null;
    }

    @Override
    public List<String> selectReplyCommentByCommentId(int comment_id) {
        return null;
    }

    @Override
    public Integer selectBlogBrowseByBlogId(int blog_id) {
        return null;
    }

    @Override
    public Integer selectBlogZanByBlogId(int blog_id) {
        return null;
    }

    @Override
    public List<Integer> selectCollectBlogIdByUserId(int user_id) {
        return null;
    }

    @Override
    public List<Integer> selectCollectUserIdByBlogId(int blog_id) {
        return null;
    }

    @Override
    public List<Integer> selectBlogIdByLabelId(int label_id) {
        return null;
    }


}
