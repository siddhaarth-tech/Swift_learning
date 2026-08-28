protocol Loggable {
    var name: String { get }

    func log()
}

extension Loggable {
    func log() {
        print("Logging: \(name)")
    }
}

struct User: Loggable {
    let name: String
}

struct Product: Loggable {
    let name: String
}

let user = User(name: "Siddharth")
let product = Product(name: "Laptop")

user.log()
product.log()
