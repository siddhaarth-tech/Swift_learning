class Person {
    func introduce() {
        print("I am a person")
    }
}

class Student: Person {
    override func introduce() {
        print("I am a student")
    }
}

let student = Student()

student.introduce()