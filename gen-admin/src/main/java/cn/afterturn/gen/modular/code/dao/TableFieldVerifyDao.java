package cn.afterturn.gen.modular.code.dao;

import cn.afterturn.gen.modular.code.model.TableFieldVerifyModel;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * TableFieldVerifyDao
 *
 * @author JueYue
 * @Date 2017-09-20 09:24
 */
public interface TableFieldVerifyDao extends BaseMapper<TableFieldVerifyModel>{


    /**
     * 查询列表
     * @param model
     * @return
     */
    List<TableFieldVerifyModel> selectList(@Param("e")TableFieldVerifyModel model);

    /**
     * 分页查询信息
     * @param pagination
     * @param model
     * @param wrapper
     * @return
     */
    List<TableFieldVerifyModel> selectPage(@Param("p")Pagination pagination,@Param("e") TableFieldVerifyModel model,@Param("w") Wrapper<TableFieldVerifyModel> wrapper);

    /**
     * 批量删除数据
     * @param fieldIds
     * @return
     */
    Integer deleteByFieldIds(@Param("fieldIds")List<Integer> fieldIds);

    /**
     * 批量插入
     * @param verifyModelList
     * @return
     */
    Integer batchInsert(@Param("list") List<TableFieldVerifyModel> verifyModelList);
}
