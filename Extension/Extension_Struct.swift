struct  MyClass{
    var name : String?
    var age : Int?

}

var classInstance1 = MyClass(name : "Siddhaarth")
print(classInstance1.name)
print(classInstance1.age)

extension MyClass{
    init(name : String ){
        self.init(name: name, age: 0)
    }
}
