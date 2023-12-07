public class Circle {
    private Decimal radius;
    private String color;

    // Default constructor
    public Circle() {
        radius = 0.0;
        color = 'white';
    }

    // Constructor with radius parameter
    public Circle(Decimal r) {
        radius = r;
        color = 'white';
    }

    // Constructor with radius and color parameters
    public Circle(Decimal r, String c) {
        radius = r;
        color = c;
    }

    // Getter for radius
    public Decimal getRadius() {
        return radius;
    }

    // Setter for radius
    public void setRadius(Decimal r) {
        radius = r;
    }

    // Getter for color
    public String getColor() {
        return color;
    }

    // Setter for color
    public void setColor(String c) {
        color = c;
    }

    // Method to calculate the area of the circle
    public Decimal calculateArea() {
        return Math.PI * radius * radius;
    }

    // Method to calculate the circumference of the circle
    public Decimal calculateCircumference() {
        return 2 * Math.PI * radius;
    }
}

