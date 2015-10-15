package dk.spring.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RootController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView show() {
       return new ModelAndView("index");
    }

    @RequestMapping(value = "/nsi", method = RequestMethod.GET)
    public ModelAndView list() {
        ModelAndView view = new ModelAndView("nsi");
        view.addObject("types", NsiTypes.values());
        return view;
    }

}