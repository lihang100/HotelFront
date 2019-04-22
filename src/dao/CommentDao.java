package dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import pojo.Comment;

public interface CommentDao {
	//显示评论
	public List<Comment> show(@Param("index")int index,@Param("pageSize")int pageSize);
	
	//添加评论
	public void add(@Param("uid")int uid,@Param("content")String content,@Param("ctime")Date ctime);
}
