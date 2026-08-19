class Animal {
    let name: String

    init(name: String) {
        self.name = name
        print("\(name) is created")
    }

    func sound() {
        print("Animal makes a sound")
    }

    deinit {
        print("\(name) is removed")
    }
}

// Dog inherits from Animal
class Dog: Animal {

    override func sound() {
        print("\(name) barks")
    }

    deinit {
        print("\(name) Dog is removed")
    }
}

var dog: Dog? = Dog(name: "Retriever")

dog!.sound()

dog = nil
