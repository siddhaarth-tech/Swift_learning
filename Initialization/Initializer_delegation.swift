struct Person {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    init(name: String) {
        self.init(name: name, age: 0)
    }
}

let p1 = Person(name: "Sam")
print(p1.name)  // Sam
print(p1.age)   // 0
