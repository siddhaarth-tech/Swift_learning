protocol Animal {
    func eat()
}

protocol Pet: Animal {
    func play()
}

struct Dog: Pet {

    func eat() {
        print("Dog is eating")
    }

    func play() {
        print("Dog is playing")
    }
}

let dog = Dog()

dog.eat()
dog.play()
