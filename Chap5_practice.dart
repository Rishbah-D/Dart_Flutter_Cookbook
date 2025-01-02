//  Building a Simple Vehicle System using OOP
// Objective
// Create a system that models different types of vehicles using classes, inheritance, interfaces, and mixins. The system should demonstrate the following concepts:

// Class Creation: Define classes for different vehicles.

// Inheritance (extends): Create a base class and extend it for specific vehicles.

// Interfaces (implements): Define behaviors that certain vehicles must implement.

// Mixins (with): Add reusable functionality to classes.


abstract class Vehicle{
    String brand="";
    int year =0;
    void start(String brand);
    void stop(String brand){
        print('$brand is stopping');
    }
}
mixin Drivable{
    void drive(String brand){
        print('$brand is driving');
    }
}
class Bike extends Vehicle with Drivable{
    @override
    void start(String brand){
        print('$brand bike is starting');
    }
    @override
    void drive(String brand){
        print('$brand bike is driving');
    }
}
class Car extends Vehicle with Drivable{
    @override
    void start(String brand){
        print('$brand car is starting');
    }
    @override
    void drive(String brand){
        print('$brand car is driving');
    }
}
abstract class Flyable{
    void fly(String brand);
}
class Airplane extends Vehicle implements Flyable{
    @override
    void fly(String brand){
        print('$brand Aeroplane is flying');
    }
    @override
    void start(String brand){
        print('$brand aeroplane is starting');
    }
}
mixin Swimmable {
    void swim(String brand){
        print('$brand boat is swimming ');
    }
}
class Boat extends Vehicle with Swimmable{
    @override
    void start(String brand){
        print('$brand boat is starting ');
    }
}
class AmphibiousVehicle extends Vehicle  with Swimmable implements Flyable{
    @override
    void start(String brand){
        print('$brand amphibious vehicle is starting');
    }
    @override
    void fly(String brand){
        print('$brand amphibious vehicle is flying');
    }
    @override
    void swim(String brand){
        print('$brand amphibious vehicle is swimming');
    }
}


void main(){
    final Bike mybike = Bike();
    mybike.brand="harley";
    mybike.start(mybike.brand);
    mybike.stop('harley');

}