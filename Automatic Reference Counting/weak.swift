class Person {
    var name: String

    init(personName: String) {
        self.name = personName
    }

    deinit {
        print("The object is Destroyed")
    }
}

var person1: Person? = Person(personName: "Siddhaarth")

weak var person2 = person1

person1?.name = "Sidd"

// person2 is optional because it is weak
print(person2!.name)

person1 = nil

print("Still not deallocated")

print(person2 == nil ? "person2 is nil" : "person2 still exists")
