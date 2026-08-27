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

let animal: Animal = Dog(name: "Jim")

if animal is Dog {
    print("This is a Dog")
}

if animal is Cat {
    print("This is a Cat")
}
