class Person {
    let name: String
    var apartment: Apartment?
    init(name: String) { self.name = name }
    deinit { print("\(name) deallocated") }
}

class Apartment {
    let unit: String
    var tenant: Person?   // strong, this causes the cycle
    init(unit: String) { self.unit = unit }
    deinit { print("Apartment \(unit) deallocated") }
}

var p: Person? = Person(name: "Mike")
var a: Apartment? = Apartment(unit: "5A")

p!.apartment = a
a!.tenant = p

p = nil
a = nil
// nothing prints here
// both objects are stuck in memory, deinit never runs



class Apartment1 {
    let unit: String
    weak var tenant: Person?   // fixed, weak breaks the cycle
    init(unit: String) { self.unit = unit }
    deinit { print("Apartment \(unit) deallocated") }
}

var p2: Person? = Person(name: "Sid")
var a2: Apartment1? = Apartment1(unit: "5")

a2!.tenant = p2

p2 = nil


a2 = nil

