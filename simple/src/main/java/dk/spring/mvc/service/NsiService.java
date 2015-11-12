package dk.spring.mvc.service;

import dk.spring.mvc.model.AddressType;
import dk.spring.mvc.model.NsiTypes;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

/**
 * Created by dkontsavoi on 10/15/2015.
 */

@Service
public class NsiService {

    public NsiTypes[] findAll(){
        return NsiTypes.values();
    }

    public ArrayList<AddressType> findAddressTypes() {
        ArrayList<AddressType>  addressTypes = new ArrayList<AddressType>();

        addressTypes.add(new AddressType("Адресс доставки корреспонденции", true));
        addressTypes.add(new AddressType("Иной адресс", false));
        addressTypes.add(new AddressType("Фактический адресс", true));
        addressTypes.add(new AddressType("Юридический адресс", true));

        return addressTypes;

    }

}
