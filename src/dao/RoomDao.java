package dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import utile.Roomid;

public interface RoomDao {
	//通过房间类型查询所有的房间号
	public List<Roomid> selectByType(@Param("type")String type);
	
}	
