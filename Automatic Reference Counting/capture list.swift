////Weak self - closure

//class Person {
//    let name = "John"
//
//    lazy var sayHello: () -> Void = { [weak self] in
//        print("Hello \(self?.name ?? "Unknown")")
//    }
//}
//
//var person: Person? = Person()
//
//person?.sayHello()
//
//person = nil

//unowned self
class Person {
    let name = "John"

    lazy var sayHello: () -> Void = { [unowned self] in
        print("Hello \(self.name)")
    }
}

let person = Person()

person.sayHello()
