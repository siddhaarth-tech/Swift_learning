let numberOfLegs = [
    "spider":8,
    "ant":6,
    "cat":4
]

for (animalName, legCount) in numberOfLegs {//for in for dict

    print("\(animalName)s have \(legCount) legs")

}
let names = ["Anna", "Alex", "Bob", "Jackie"]

for name in names {
    print("Hello, \(name)!")//for in for array
}

//skipping values or using slected values 
for skipping in stride(
    from: 0,
    to: 60,
    by: 5
){
    print(skipping)
}
