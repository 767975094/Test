package com.gh.greenhouse.dao;

import com.gh.core.dao.BasicDao;
import com.gh.core.domain.Gh_Inner_Environment;
import com.gh.greenhouse.domain.*;;

public class P_realTimeDao  extends BasicDao<ModelBase>{

	public P_realTimeDao() {
		super("Gh_Inner_Environment",Gh_Inner_Environment.class);
	}
 
	
	/**
	 * 根据id查询模型库
	 * 
	 * @param modelId
	 * @return
	 */
	/*public Gh_Inner_Environment findByGHid(Integer ghId) {
		return super.load(Cnd.where("Model_id", "=", ghId));
	}*/
}
