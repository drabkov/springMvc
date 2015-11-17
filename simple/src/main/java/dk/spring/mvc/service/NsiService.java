package dk.spring.mvc.service;

import dk.spring.mvc.model.AddressType;
import dk.spring.mvc.model.Catalog;
import dk.spring.mvc.model.NsiTypes;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by dkontsavoi on 10/15/2015.
 */

@Service
public class NsiService {

    public NsiTypes[] findAll(){
        return NsiTypes.values();
    }

    public List<AddressType> findAddressTypes() {
        List<AddressType> addressTypes = new ArrayList<AddressType>();

        addressTypes.add(new AddressType("Адрес доставки корреспонденции", true));
        addressTypes.add(new AddressType("Иной адрес", false));
        addressTypes.add(new AddressType("Фактический адрес", true));
        addressTypes.add(new AddressType("Юридический адрес", true));

        return addressTypes;

    }

    public ArrayList<Catalog> findKBK() {
        ArrayList<Catalog>  catalog = new ArrayList<Catalog>();

        return catalog;

    }
}
