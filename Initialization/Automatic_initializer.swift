
class Vehicle {
    var brand: String
    
    // Designated initializer
    init(brand: String) {
        self.brand = brand
    }
    
    // Convenience initializer
    convenience init() {
        self.init(brand: "Unknown Brand")
    }
}

// Subclass
class Car: Vehicle {
    // Rule 1 Met: All new properties provide default values.
    var numberOfDoors: Int = 4
    
    // Because no designated initializers are defined here,
    // Car inherits both initializer from Vehicle.
}

// 1. Using the inherited designated initializer
let myCar = Car(brand: "Toyota")
print(myCar.brand)         
print(myCar.numberOfDoors)

// 2. Using the inherited convenience initializer
let defaultCar = Car()
print(defaultCar.brand)

