class Person {
    var age = 0
}

class Student: Person {
    override var age: Int {
        didSet {
            print("Age changed to \(age)")
        }
    }
}

let student = Student()

student.age = 18
student.age = 19