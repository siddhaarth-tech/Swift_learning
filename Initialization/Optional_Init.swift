import UIKit
//============ Init using Class ===========//
class Person{
    let name:String //here it is a constant but the initialiser will allow to initialize the value with init 
    var rollnumber : Int? //Optionals
    init(name : String){
        self.rollnumber = 55
        self.name = name
    }
    init(nickname : String){
        self.name = nickname
//Here the optionals allows the init to create instance without the optional parameters initialization//
        
    }
}

var person1 = Person(name : "Siddhaarth") //Initialisation parameter
print(person1.name)
//Optional Binding
if let registerNumber = person1.rollnumber{
    print(registerNumber)
}
