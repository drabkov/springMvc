package dk.spring.mvc.model;

/**
 * Created by drabkov on 29.10.2015.
 */
public class AddressType {


    private String name;
    private boolean actual;

    public AddressType(String name, boolean actual){
        this.name = name;
        this.actual = actual;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public boolean isActual() {
        return actual;
    }

    public void setActual(boolean actual) {
        this.actual = actual;
    }


}
