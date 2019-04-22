package dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pojo.User;



public interface UserMapper {

	//����id��ѯ����
	User selectById(int id);
	//�޸�
	void updateUser(User user);
	//查询所有用户
	List<User> selectAll();
	//添加用户
	void addUser(User user);
	//改用户头像和用户名
	public void change(User user);
	
}
