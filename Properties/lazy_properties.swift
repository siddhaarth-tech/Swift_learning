//lazy properties are only used or initialised while accessing them 
struct Student {
    var name: String
    func createIntroduction() -> String {
        print("Creating introduction...")
        return "Hello, my name is \(name)"
    }

    lazy var introduction: String = createIntroduction()
}

var newStudent = Student(name : "Siddhaarth")

print(newStudent.name)
print("--------")
print(newStudent.introduction)