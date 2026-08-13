import Foundation
struct Student {
    var name: String
    var rollNumber :Int{ //property Observers
        willSet {//execute before assigning values
            print("About to change")
            print("New value of rollNumber : \(newValue)")//can use newValue keyword to access new values
        }
        
        didSet {//executes after assigning
            print("Changed")
            print("Old value of rollNumber : \(oldValue)") //can use the oldValue keyword to access old values
        }
    }
    var registerNumber :String {
      get{
        "Student \(rollNumber)"
      }
      set{
        rollNumber = Int(newValue)!
        print("The new register number is \(newValue)")
      }
    }
}

var newStudent = Student(name : "Siddhaarth",rollNumber : 23 )

print(newStudent.name)

print(newStudent)

newStudent.registerNumber = "26"

print(newStudent)
print(newStudent.registerNumber)
