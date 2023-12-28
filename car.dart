class Car {
  String name;
  String condition;
  double price;
  String assets;
  String description;

  Car(this.name, this.condition, this.price, this.assets, this.description);

  @override
  String toString() {
    return """
    Price: $price\$
    Condition: $condition
    """;
  }
}

List<Car> cars = [
  Car('Ford Mustang', 'Excellent', 5000, "assets/ford.jpg", 'A sleek and powerful sports car with a classic design.'),
  Car('Bmw x6', 'Well-maintained', 18000, "assets/BMW-X6.jpg", 'A luxury SUV known for its stylish appearance and advanced features.'),
  Car('Mercedes G-class', 'Fair', 150000, "assets/2022-Mercedes-Benz.jpg", 'An iconic off-road vehicle with a strong and durable build.'),
  Car('Honda Civic', 'Very good condition', 15000, "assets/honda-civic-93.jpg", 'A reliable and fuel-efficient compact car with modern features.'),
  Car('Honda Accord', 'Like New', 17000, "assets/2023-Honda-Accord.jpg", 'A spacious and comfortable midsize sedan with a smooth ride.'),
  Car('Kia Picanto', 'Average condition', 9000, "assets/Kia-Picanto-GT-1-scaled.jpg", 'A compact city car known for its agility and fuel efficiency.'),
  Car('Kia Forte', 'Damaged', 4700, "assets/2024_Kia_Forte_GT_1.webp", 'Despite some damage, this compact car offers good value and efficiency.'),
  Car('Toyota Corolla', 'Like New', 12000, "assets/toyota corolla.webp", 'One of the best-selling cars globally, known for its reliability and efficiency.'),
  Car('Toyota Tacoma', 'Like New', 30000, "assets/tacoma.png", 'A robust and capable pickup truck suitable for both work and play.'),
  Car('Chevrolet Tahoe', 'Exceptional', 30000, "assets/2023-Chevrolet-Tahoe-Z71.webp", 'A spacious and powerful SUV ideal for families and road trips.'),
];
