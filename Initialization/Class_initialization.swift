class Person {
    var name: String

    init(name: String) {
        self.name = name
    }
}

class Student: Person {
    var rollNumber: Int

    init(name: String, rollNumber: Int) {
        self.rollNumber = rollNumber
        super.init(name: name)
    }

    override convenience init(name: String) { //convenience
        self.init(name: name, rollNumber: 0)
    }
}

var newStudent = Student(name: "Siddhaarth")
print(newStudent.name)
print(newStudent.rollNumber)
