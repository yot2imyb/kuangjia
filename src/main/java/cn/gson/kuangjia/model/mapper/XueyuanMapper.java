package cn.gson.kuangjia.model.mapper;



import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import cn.gson.kuangjia.model.pojos.Xueyuan;




@Mapper
public interface XueyuanMapper {
	public List<Xueyuan> findUsers();
}
