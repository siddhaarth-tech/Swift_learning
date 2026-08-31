protocol Vehicle {
    func move() -> String
}

struct Car: Vehicle {
    func move() -> String {
        "Car is moving"
    }
}

func createVehicle() -> some Vehicle {
    return Car()
}

let vehicle = createVehicle()

print(vehicle.move())
