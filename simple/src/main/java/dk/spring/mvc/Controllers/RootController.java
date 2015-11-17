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
    public ModelAndView viewListCatalogs() {
        ModelAndView view = new ModelAndView("index");
        view.addObject("types", nsiService.findAll());
        return view;
    }

    @RequestMapping(value = "/viewCatalog", params = "catalogType=AddressTypes", method = RequestMethod.GET)
    public ModelAndView viewAdressTypes() {
        ModelAndView view = new ModelAndView("addressTypes");
        view.addObject("addressTypes", nsiService.findAddressTypes());
        return view;
    }

    @RequestMapping(value = "/viewCatalog", params = "catalogType=KBK", method = RequestMethod.GET)
    public ModelAndView viewKBK() {
        ModelAndView view = new ModelAndView("catalog");

        return view;
    }

    @RequestMapping(value = "/viewCatalog", params = "catalogType=OKPD", method = RequestMethod.GET)
    public ModelAndView viewOKPD() {
        ModelAndView view = new ModelAndView("catalog");

        return view;
    }

    @RequestMapping(value = "/editCatalog", params = "catalogType=AddressTypes", method = RequestMethod.GET)
    public ModelAndView editAdressTypes() {
        ModelAndView view = new ModelAndView("editAddressTypes");
        view.addObject("addressTypes", nsiService.findAddressTypes());
        return view;
    }
}