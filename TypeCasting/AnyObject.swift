class Dog {
    let name = "Jimmy"
}

class Cat {
    let name = "Kitty"
}

var objects: [AnyObject] = []

objects.append(Dog())
objects.append(Cat())

for object in objects {
    if let dog = object as? Dog {
        print("Dog:", dog.name)
    } else if let cat = object as? Cat {
        print("Cat:", cat.name)
    }
}
