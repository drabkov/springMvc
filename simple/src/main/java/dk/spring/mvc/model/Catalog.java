package dk.spring.mvc.model;

/**
 * Created by drabkov on 13.11.2015.
 */
public class Catalog {

    private String id;
    private String name;
    private boolean actual;
    private Catalog parent;

    public Catalog(String id, String name, boolean actual, String parentId){
        this.id = id;
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

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Catalog getParent(){
        return parent;
    }

    public void setParentId(Catalog parent) {
        this.parent = parent;
    }
}
