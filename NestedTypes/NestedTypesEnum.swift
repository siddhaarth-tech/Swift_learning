struct Student {

    enum Grade {
        case A
        case B
        case C
        case D
        case F
    }

    let name: String
    let grade: Grade
}

let student = Student(
    name: "Siddhaarth",
    grade: .A
)

print(student.name)
print(student.grade)
