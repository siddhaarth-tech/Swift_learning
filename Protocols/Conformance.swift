protocol Rechargeable {
    func recharge()
}

class Phone: Rechargeable {
    func recharge() {
        print("Phone is charging")
    }
}

class Book {
    func read() {
        print("Reading book")
    }
}

let phone = Phone()
let book = Book()

print(phone is Rechargeable)
print(book is Rechargeable)
