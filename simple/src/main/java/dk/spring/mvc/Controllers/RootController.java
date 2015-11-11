package dk.spring.mvc.Controllers;

import dk.spring.mvc.service.NsiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RootController {

    @Autowired
    public NsiService nsiService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView show() {
        ModelAndView view = new ModelAndView("index");
        view.addObject("types", nsiService.findAll());
        return view;
    }

    @RequestMapping(value = "/view", method = RequestMethod.GET)
    public ModelAndView listAdressTypes() {
        ModelAndView view = new ModelAndView("addressTypes");
        view.addObject("addressTypes", nsiService.findAddressTypes());
        return view;
    }

}