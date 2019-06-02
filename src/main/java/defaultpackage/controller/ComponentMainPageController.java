package defaultpackage.controller;

import com.alibaba.fastjson.JSON;
import defaultpackage.mybatis.domain.EntityStockData;
import defaultpackage.mybatis.service.DataServiceImp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletResponse;
import java.time.LocalDate;
import java.util.List;

@Controller
public class ComponentMainPageController {

    @Autowired
    @Qualifier("DataServiceImpObj")
    private DataServiceImp dateService;

    /**
     * 首页显示主要指数图表，根据传入股票代码返回数据到前端
     *
     * @param jsonstr  股票代码
     * @param response 响应对象
     * @throws Exception
     */
    @RequestMapping(value = "MainIndexChartShow.do", method = RequestMethod.POST)
    public void MainIndexChartShow(@RequestBody String jsonstr, HttpServletResponse response) {
        LocalDate currentDate = LocalDate.now();
        LocalDate lastDate = currentDate.minusMonths(6);
        //查找股票指数数据
        List<EntityStockData> stockValueList = dateService.GetStockDataLimit(jsonstr, lastDate.toString(), currentDate.toString());
        //将结果转为json字符串返回
        String jsonlist = JSON.toJSONString(stockValueList);
        //返回查询数据
        response.setContentType("text/html;charset=UTF-8");
        try {
            response.getWriter().write(jsonlist);
        } catch (Exception responseErr) {
            System.out.println("MainIndexChartShow响应异常" + responseErr.getMessage());
        }
    }
}
