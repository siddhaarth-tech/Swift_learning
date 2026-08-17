class Animal {
    var name = "Unknown"

    func eat() {
        print("\(name) is eating")
    }
}

let animal = Animal()

animal.name = "Tom"
animal.eat()

class Dog: Animal {
    func bark() {
        print("\(name) is barking")
    }
}

let dog = Dog()

dog.name = "Bruno"
dog.eat()      // inherited from Animal
dog.bark()     // Dog's own method
