class Person {
    var name: String

    init(name: String) {
        self.name = name
    }

    convenience init() {
        self.init(name: "Unknown")
    }
}

class Employee: Person {
    var salary: Int

    init(name: String, salary: Int) {
        self.salary = salary
        super.init(name: name)
    }

    override convenience init(name: String) {
        self.init(name: name, salary: 0)
    }
}

class Manager: Employee {
    var department = "General"
}

let p1 = Person(name: "Sid")
let p2 = Person()

let e1 = Employee(name: "Aathavan", salary: 50000)
let e2 = Employee(name: "Nilesh")
let e3 = Employee()

let m1 = Manager()
let m2 = Manager(name: "Nirmal")
let m3 = Manager(name: "Raj", salary: 70000)

print(p1.name)
print(p2.name)

print(e1.name, e1.salary)
print(e2.name, e2.salary)
print(e3.name, e3.salary)

print(m1.name, m1.salary, m1.department)
print(m2.name, m2.salary, m2.department)
print(m3.name, m3.salary, m3.department)
