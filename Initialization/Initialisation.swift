import UIKit
//============ Init using Class ===========//
class Person{
    var name:String
    init(name : String){
        self.rollnumber = 55
        self.name = name
    }
    init(nickname : String){
        self.name = nickname
        self.rollnumber = 88
    }
    var rollnumber : Int //tried using the declaration below the init
}

var person1 = Person(name : "Siddhaarth") //Initialisation parameter
print(person1.name)
print(person1.rollnumber)
var person2 = Person(nickname : "Sid")
print(person2.name)

// =============== Init using Struct ===============//
struct Student{
    var name:String
    var rollnumber : Int
    init(_ name : String){ //here the initializers also can leave the argument label empty
        self.name = name
        self.rollnumber = 55
    }
    init(_ rollnumber : Int){
        self.name = "Siddhaarth"
        self.rollnumber = rollnumber
    }
}
var student1 = Student("Siddhaarth")
var student2 = Student(88)
print(student1)
print(student2)

//==========Init using enum ============//
enum Direction{
    case South
    case North
    case East
    case West
    init(Number : Int){
        switch Number{
        case 1:
                self = .North
        case 2:
            self = .South
        case 3:
            self = .East
        case 4:
            self = .West
        default:
            self = .North
        }
    }
}
var direction1 = Direction(Number: 2)
print(direction1)
