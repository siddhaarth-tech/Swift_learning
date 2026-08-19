struct Student {
    let name: String
    let mark: Int

    init?(name: String, mark: Int) {
        if mark < 0 || mark > 100 {
            return nil
        }

        self.name = name
        self.mark = mark
    }
}

let student1 = Student(name: "Sid", mark: 85)

if let student = student1 {
    print(student.name)
    print(student.mark)
} else {
    print("Student could not be created")
}

let student2 = Student(name: "nilesh", mark: 150)

if let student = student2 {
    print(student.name)
    print(student.mark)
} else {
    print("Student could not be created")
}
