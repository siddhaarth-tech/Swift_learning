@propertyWrapper
struct Max100 {

    private var number = 0

    var wrappedValue: Int {
        get {
            return number
        }

        set {
            number = min(newValue, 100)
        }
    }
}

struct Student {

    @Max100 var marks: Int
}

var student = Student()

student.marks = 80
print(student.marks)   // 80

student.marks = 150
print(student.marks)   // 100