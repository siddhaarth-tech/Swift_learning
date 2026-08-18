import Foundation

class Vehicle {
    
    // default value.
    // Because it has a default value, Vehicle automatically gets a default init().
    var numberOfWheels = 0
    
    // Computed property
    var description: String {
        return "\(numberOfWheels) wheels"
    }
}

let vehicle = Vehicle()

print("Vehicle: \(vehicle.description)")

class Bicycle: Vehicle {
    
    // Vehicle has default init()  here
    // Bicycle provides its own init() with the same signature.
    //So its a Override
    
    override init() {
        
        // First initialize the superclass.
        super.init()
        numberOfWheels = 2
    }
}

let bicycle = Bicycle()

print("Bicycle: \(bicycle.description)")

class Bike: Vehicle {
    var color: String
    
    // Designated initializer
    init(color: String) {
        
        // Initialize Bike own property.
        self.color = color
    
        // We don't explicitly write:
        // super.init()
        // Swift implicitly calls super.init() here.
    }
    
    // Override the inherited computed property.
    override var description: String {
        return "\(super.description) bike with  \(color) color"
    }
}
let bike = Bike(color: "silver")
print("Bike: \(bike.description)")


