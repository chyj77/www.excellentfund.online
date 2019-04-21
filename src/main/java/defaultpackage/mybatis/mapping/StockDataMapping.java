package defaultpackage.mybatis.mapping;

import defaultpackage.mybatis.domain.EntityStockData;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface StockDataMapping {

    // 查询结果以日期升序排列
    @Select("SELECT stockCode, valueDate, openingPrice, topPrice, closingPrice, dailyGrowthRate,lowestPrice, turnoverValue, moneyValue FROM stockdata WHERE stockCode=#{stockCode} ORDER BY valueDate ASC;")
    List<EntityStockData> GetStockData(String stockCode);

    /*
    获取指定日期数据
    获取对象集合，每个对象包括：股票代码、股票日期、开盘价、最高价、收盘价、最低价、成交量、成交金额
    */
    @Select("SELECT stockCode, valueDate, openingPrice, topPrice, closingPrice, dailyGrowthRate,lowestPrice, turnoverValue, moneyValue " +
            "FROM stockdata " +
            "WHERE stockdata.stockCode = #{stockCode} " +
            "AND DATE_FORMAT(stockdata.valueDate, '%Y-%m-%d') >= DATE_FORMAT(#{startDate}, '%Y-%m-%d') " +
            "AND DATE_FORMAT(stockdata.valueDate, '%Y-%m-%d')<=DATE_FORMAT(#{endDate}, '%Y-%m-%d') " +
            "ORDER BY valueDate ASC;")
    List<EntityStockData> GetStockDataLimit(@Param("stockCode") String stockCode, @Param("startDate") String startDate, @Param("endDate") String endDate);

}
