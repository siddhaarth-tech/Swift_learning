protocol Vehicle {
    func move() -> String
}

struct Car: Vehicle {
    func move() -> String {
        "Car is moving"
    }
}

struct Bike: Vehicle {
    func move() -> String {
        "Bike is moving"
    }
}

let vehicles: [any Vehicle] = [
    Car(),
    Bike()
]

for vehicle in vehicles {
    print(vehicle.move())
}
