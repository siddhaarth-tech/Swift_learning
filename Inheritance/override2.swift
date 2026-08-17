class Person {
    func introduce() {
        print("I am a person")
    }
}

class Student: Person {
    override func introduce() {
        super.introduce() //super keyword
        print("I am also a student")
    }
}

let student = Student()

student.introduce()