func greet() {
    guard let unwrapped = name else {
        print("Name is nil")
        return
    }

    print("Hello, \(unwrapped)")
}

greet()
let name: String? = "Swift"

if let unwrapped = name {
    print("Hello, \(unwrapped)")
} else {
    print("Name is nil")
}
greet()

