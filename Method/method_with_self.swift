class Person {
    var name: String

    init(name: String) {
        self.name = name
    }

    func showName() {
        print(self.name)
    }
}

let person = Person(name: "Anu")
person.showName()
