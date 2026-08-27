class Animal {
    let name: String

    init(name: String) {
        self.name = name
    }
}

class Dog: Animal {
    func bark() {
        print("Woof")
    }
}

class Cat: Animal {
    func meow() {
        print("Meow")
    }
}

let animal: Animal = Cat(name: "Kitty")

if let dog = animal as? Dog {
    dog.bark()
} else {
    print("This is not a Dog")
}
