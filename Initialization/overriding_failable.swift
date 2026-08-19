class Person {
    let age: Int

    init?(age: Int) {
        if age < 0 {
            return nil
        }

        self.age = age
    }
}

class Student: Person {
    override init(age: Int) {
        super.init(age: age)!
    }
}

let person = Person(age: -5)

if person == nil {
    print("Person creation failed")
}

let student = Student(age: 15)

print(student.age)
