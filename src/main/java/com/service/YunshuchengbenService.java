package com.service;

import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.YunshuchengbenEntity;
import java.util.Map;

/**
 * 运输成本 服务类
 */
public interface YunshuchengbenService extends IService<YunshuchengbenEntity> {

    /**
    * @param params 查询参数
    * @return 带分页的查询出来的数据
    */
     PageUtils queryPage(Map<String, Object> params);
}