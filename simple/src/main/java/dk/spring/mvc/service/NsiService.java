package dk.spring.mvc.service;

import dk.spring.mvc.model.NsiTypes;
import org.springframework.stereotype.Service;

/**
 * Created by dkontsavoi on 10/15/2015.
 */

@Service
public class NsiService {

    public NsiTypes[] findAll(){
        return NsiTypes.values();
    }
}
