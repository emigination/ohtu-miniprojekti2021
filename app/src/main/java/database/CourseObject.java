package database;

public class CourseObject {

    private int id;
    private String name;

    public CourseObject(String name) {
        this.name = name;
    }

    public CourseObject(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "{name='" + getName() + "'}";
    }

}
