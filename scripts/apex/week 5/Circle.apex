// Create instances using constructors
Circle circle1 = new Circle();
Circle circle2 = new Circle(4.5);
Circle circle3 = new Circle(5.5, 'black');

// Create instances using setters
Circle circle4 = new Circle();
circle4.setRadius(3.0);
circle4.setColor('red');

Circle circle5 = new Circle();
circle5.setRadius(6.0);
circle5.setColor('blue');

// Calculate and display area and circumference
System.debug('Circle 1 - Radius: ' + circle1.getRadius() + ', Color: ' + circle1.getColor() + ', Area: ' + circle1.calculateArea() + ', Circumference: ' + circle1.calculateCircumference());
System.debug('Circle 2 - Radius: ' + circle2.getRadius() + ', Color: ' + circle2.getColor() + ', Area: ' + circle2.calculateArea() + ', Circumference: ' + circle2.calculateCircumference());
System.debug('Circle 3 - Radius: ' + circle3.getRadius() + ', Color: ' + circle3.getColor() + ', Area: ' + circle3.calculateArea() + ', Circumference: ' + circle3.calculateCircumference());
System.debug('Circle 4 - Radius: ' + circle4.getRadius() + ', Color: ' + circle4.getColor() + ', Area: ' + circle4.calculateArea() + ', Circumference: ' + circle4.calculateCircumference());
System.debug('Circle 5 - Radius: ' + circle5.getRadius() + ', Color: ' + circle5.getColor() + ', Area: ' + circle5.calculateArea() + ', Circumference: ' + circle5.calculateCircumference());
