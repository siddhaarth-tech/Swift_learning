class School {
    let name: String
    init(name: String) {
        self.name = name
    }
    deinit { print("\(name) School building was destroyed") }
}

class Teacher {
    let name: String
    // Weak
    weak var workplace: School?
    
    init(name: String) {
        self.name = name
    }
}

// 1. Create the School (Strong reference)
var swift: School? = School(name: "Mobicip")

// 2. Create the Teacher
var newTeacher : Teacher? = Teacher(name: "Sid")

// 3. Connect them
newTeacher?.workplace = swift

// 4. Set the strong school variable to nil
print("Destroying the school")
swift = nil

print(newTeacher?.workplace)
