package models;


public class Course {
    private String title;
    private String description;
    private String stream;

    public Course(String title, String description, String stream) {
        this.title = title;
        this.description = description;
        this.stream = stream;
    }

    @Override
    public String toString() {
        return "Course{" + "title=" + title + ", description=" + description + ", stream=" + stream + '}';
    }
    
}
