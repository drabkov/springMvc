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

    public AddressType[] findAddressTypes() {
        AddressType[] addressTypes = new AddressType[4];

        addressTypes[0] = new AddressType("Адресс доставки корреспонденции", false);
        addressTypes[1] = new AddressType("Иной адресс", true);
        addressTypes[2] = new AddressType("Фактический адресс", true);
        addressTypes[3] = new AddressType("Юридический адресс", true);

        return addressTypes;

    }

}
