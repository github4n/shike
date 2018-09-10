/*
 * 文件名称: SKUserYueDao.java
 * 版权信息: Copyright 2001-2017 hangzhou jingshu technology Co., LTD. All right reserved.
 * ----------------------------------------------------------------------------------------------
 * 修改历史:
 * ----------------------------------------------------------------------------------------------
 * 修改原因: 新增
 * 修改人员: fankd
 * 修改日期: 2018-9-9
 * 修改内容: 
 */
package com.kensure.shike.zhang.dao;
import co.kensure.annotation.MyBatisRepository;
import co.kensure.frame.JSBaseDao;
import java.util.List;
import java.util.Collection;
import java.util.Map;
import com.kensure.shike.zhang.model.SKUserYue;

/**
 * 用户余额Dao接口类
 * 
 * @author fankd created on 2018-9-9
 * @since 
 */
 @MyBatisRepository
public interface SKUserYueDao extends JSBaseDao<SKUserYue> {
	
	
	public SKUserYue selectOne(Long id);
	
	public List<SKUserYue> selectByIds(Collection<Long> ids);
	
	public List<SKUserYue> selectAll();
	
	public List<SKUserYue> selectByWhere(Map<String, Object> parameters);
	
	
	public long selectCount();
	
	public long selectCountByWhere(Map<String, Object> parameters);
	
	
	public boolean insert(SKUserYue obj);
	
	public boolean insertInBatch(List<SKUserYue> objs);
	
	
	public boolean update(SKUserYue obj);
    
    public boolean updateByMap(Map<String, Object> params);
    
    
	public boolean delete(Long id);	
	
    public boolean deleteMulti(Collection<Long> ids);
    
    public boolean deleteByWhere(Map<String, Object> parameters);
	
	
}
