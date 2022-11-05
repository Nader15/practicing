// FIVE SOLID PRINCIPLES (OOP PRINCIPLES)

void main() {
  // DeliveryBoy().deliverProduct("Pizza");// Dependency Inversion Principle (DIP)
  // FreeCar().parkCar();// Interface Segregation Principle (ISP)
  // Square2(side: 20).calculate(); // Liskov Substitution Principle (LSP)
  // Rectangle1(high: 5,width: 10).calculate(); // Open Closed Principle (OCP)
  // Programmer().setTaxis(tax: 100); // Single Responsibility Principle (SRP)
}

// Dependency Inversion (DIP)

class DeliveryServices {
  void deliverProduct(productName) {
    print("$productName");
  }
}

class DeliveryBoy implements DeliveryServices {
  @override
  void deliverProduct(productName) {
    print("$productName delivered by me :)");
  }
}

class DeliveryCompany implements DeliveryServices {
  @override
  void deliverProduct(productName) {
    print("$productName delivered by Delivery Boy :)");
  }
}

// Interface Segregation Principle (ISP)

abstract class Parking {
  void parkCar() {
    print("Welcome");
  }

  void unParkCar() {
    print("See You (:");
  }
}

abstract class PaidParking extends Parking {
  void doPayment() {
    print("Please Pay");
  }
}

abstract class FreeParking extends Parking {}

class FreeCar extends FreeParking {
  @override
  void parkCar();

  @override
  void unParkCar();
}

class PaidCar extends PaidParking {
  @override
  void parkCar();

  @override
  void unParkCar();

  @override
  void doPayment();
}

// Liskov Substitution Principle (LSP)

class Rectangle2 {
  double high;
  double width;

  Rectangle2({required this.high, required this.width});

  void calculate() {
    double area = high * width;
    print(area);
  }
}

class Square2 extends Rectangle2 {
  double side;

  Square2({required this.side}) : super(high: side, width: side);
}

// Open Closed Principle (OCP)

abstract class Shape {
  void calculate();
}

class Rectangle1 extends Shape {
  double high;
  double width;
  double? area;

  Rectangle1({required this.high, required this.width, this.area});

  @override
  void calculate() {
    area = high * width;
    print(area);
  }
}

class Square1 extends Shape {
  double side;
  double? area;

  Square1({required this.side, this.area});

  @override
  void calculate() {
    area = side * side;
    print(area);
  }
}

// Single Responsibility Principle (SRP)

class Person {
  int? id;
  String? name;
  String? type;
  int? salary;

  Person({this.id, this.name, this.type, this.salary});
}

class Doctor {
  Person person = Person();

  // Doctor(this.person );

  setTaxis({required int tax}) {
    person.salary = 1000 + tax;
    print(person.salary);
  }
}

class Programmer {
  Person person = Person();

  // Doctor(this.person );

  setTaxis({required int tax}) {
    person.salary = 1200 + tax;
    print(person.salary);
  }
}
