class Person {
    var name = "John"
}

class Student: Person {
    override var name: String {
        get {
            return super.name + " Student"
        }
        set {
            super.name = newValue
        }
    }
}

let student = Student()

print(student.name)

student.name = "Bob"

print(student.name)

//===============

