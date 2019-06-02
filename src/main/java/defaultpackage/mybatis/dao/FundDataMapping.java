package defaultpackage.mybatis.dao;

import defaultpackage.mybatis.domain.*;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface FundDataMapping {

    List<EntityFundNameData> GetFundNameData();

    List<EntityFundValueData> GetFundValueDataByCode(@Param("tableName") String tableName, @Param("fundCode") String fundCode);

    List<EntityFundValueData> GetFundValueDataLimit(@Param("tableName") String tableName, @Param("fundCode") String fundCode, @Param("startDate") String startDate, @Param("endDate") String endDate);

    List<EntityFundPerformance> GetFundPerformanceByCode(String fundCode);

    List<EntityFundBaseData> GetFundBaseDataLimit(@Param("fundType") String fundType, @Param("startIndex") Integer startIndex, @Param("dataNum") Integer dataNum);

    Integer GetAllResultCountForPaging(@Param("fundType") String fundType);

    List<EntityFundBaseData> GetFundBaseDataBySearchStr(@Param("searchStr") String searchStr);

    List<EntityFundManagerData> GetFundManagerDataByCodeAndDate(@Param("fundCode") String fundCode, @Param("fundLastNAVDate") String fundLastNAVDate);
}
