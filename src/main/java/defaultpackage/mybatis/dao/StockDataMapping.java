package defaultpackage.mybatis.dao;

import defaultpackage.mybatis.domain.EntityStockData;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface StockDataMapping {

    List<EntityStockData> GetStockData(String stockCode);

    List<EntityStockData> GetStockDataLimit(@Param("stockCode") String stockCode, @Param("startDate") String startDate, @Param("endDate") String endDate);
}
