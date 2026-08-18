
//Struct can initialize the parameters without the init by directly passing
struct Employee{
    var name = "Unknown"
    var id: Int //here the struct can be initialize the parameter member wise while creating
}

var newEmployee = Employee(id : 23)
print(newEmployee)

//==================//
class Company{
    let name = "Mobicip"
    var contactNumber : Int
    init(_ contact : Int){ //here the class must require the init to initilalize the value
        self.contactNumber = contact
    }
}

var newCompany = Company(123456789)
print(newCompany.contactNumber)
