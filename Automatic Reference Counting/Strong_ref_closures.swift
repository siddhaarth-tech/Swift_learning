class Student {
    let name: String

    var printInfo: (() -> Void)?

    init(name: String) {
        self.name = name

        printInfo = {
            print("Student: \(self.name)")
        }
    }

    deinit {
        print("\(name) Removed")
    }
}

var student: Student? = Student(name: "Siddhaarth")

student?.printInfo?()

student = nil

