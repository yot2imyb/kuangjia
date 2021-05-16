package cn.gson.kuangjia.model.dao;



import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import cn.gson.kuangjia.model.pojos.Xueyuan;




public interface XueyuanDao extends CrudRepository<Xueyuan, Integer>{
	@Query("select xid from Xueyuan x ")
	public List<Integer> findId();
}
 