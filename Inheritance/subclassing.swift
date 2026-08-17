class Person {
    var name = "Unknown"

    func introduce() {
        print("My name is \(name)")
    }
}

class Student: Person {
    var grade = 0
}

let student = Student()

student.name = "Alice"
student.grade = 10

student.introduce()
print(student.grade)

class CollegeStudent: Student {
    var major = "Unknown"
}

let collegeStudent = CollegeStudent()

collegeStudent.name = "Bob"
collegeStudent.grade = 12
collegeStudent.major = "Computer Science"

collegeStudent.introduce()

print(collegeStudent.grade)
print(collegeStudent.major)