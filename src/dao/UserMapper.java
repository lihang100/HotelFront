package dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pojo.User;



public interface UserMapper {

	//根据id查询对象
	User selectById(int id);
	//修改
	void updateUser(User user);
	
}
