@AddHello
struct Person {
}

//@AddHello generates
func hello() {
    print("Hello")
}


//so the attched macro now expands to this by that macro
struct Person {
    func hello() {
        print("Hello")
    }
}
//now the value is accessed
let person = Person()
person.hello()
