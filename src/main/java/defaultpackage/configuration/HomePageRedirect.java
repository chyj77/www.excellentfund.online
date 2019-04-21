package defaultpackage.configuration;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomePageRedirect {
    @RequestMapping("/")
    public String goToIndex() {
        return "index";
    }
}