protocol Animal {
    func sound() -> String
}
struct Cat: Animal {
    func sound() -> String {
        "Meow"
    }
}

struct Dog: Animal {
    func sound() -> String {
        "Bark"
    }
}
struct AnimalWrapper: Animal {
    let animal: any Animal

    func sound() -> String {
        animal.sound()
    }
}
func getAnimal(_ isDog: Bool) -> some Animal {
    if isDog {
        return AnimalWrapper(animal: Dog())
    } else {
        return AnimalWrapper(animal: Cat())
    }
}

func getAnimal() -> some Animal {
    Dog()
}

print(getAnimal().sound())
