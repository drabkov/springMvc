package dk.spring.mvc.model;

/**
 * Created by drabkov on 13.11.2015.
 */
public class KBK {

    private String name;
    private boolean actual;
    private KBK parent;

    public KBK(String name, boolean actual, KBK parent){
        this.name = name;
        this.actual = actual;
        this.parent = parent;
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
