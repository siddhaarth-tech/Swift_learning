class Dog {
    let name: String
    init(name: String) {
        self.name = name }
    deinit {
        print("\(name) deallocated") }   // runs when object is destroyed
}

var dog1: Dog? = Dog(name: "Retriever")   // ref count = 1
var dog2 = dog1                      // ref count = 2, strong by default

dog1 = nil   // ref count = 1, dog2 still holds it
print(dog2?.name ?? "gone")

dog2 = nil   // ref count = 0, now it gets deallocated

var dogs: [Dog] = [Dog(name: "Buddy")]
var ref: Dog? = dogs[0]     // ref count = 2, array slot + this variable

dogs.removeAll()      // ref count = 1, array no longer holds it, still alive
print(ref?.name ?? "gone")   //  still alive because ref holds it

ref = nil   // ref count = 0, now deallocated

