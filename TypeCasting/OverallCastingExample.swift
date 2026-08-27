class Animal {
    let name: String

    init(name: String) {
        self.name = name
    }
}

class Dog: Animal {
    func bark() {
        print("\(name): Woof")
    }
}

class Cat: Animal {
    func meow() {
        print("\(name): Meow")
    }
}



// 1. Type checking with is


let animal1: Animal = Dog(name: "Jimmy")

if animal1 is Dog {
    print("animal1 is a Dog")
}


// 2. Safe downcasting as?


if let dog = animal1 as? Dog {
    dog.bark()
}


// 3. Another safe cast


let animal2: Animal = Cat(name: "Kitty")

if let cat = animal2 as? Cat {
    cat.meow()
}

// 4. Forced downcasting as!

let animal3: Animal = Dog(name: "Max")

let dog = animal3 as! Dog

dog.bark()
