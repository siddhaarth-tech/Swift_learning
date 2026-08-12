struct Student {
    var name: String
    var age: Int
}

var student1 = Student(name: "Siddhaarth", age: 20)

print("Before changing:")
print(student1.name)
print(student1.age)

// Change values
student1.name = "Sid"
student1.age = 21

print("After changing:")
print(student1.name)
print(student1.age)



