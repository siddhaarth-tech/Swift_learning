class Customer {
    let name: String
    var card: CreditCard?
    init(name: String) { self.name = name }
    deinit { print("Customer \(name) deallocated") }
}

class CreditCard {
    let number: Int
    unowned let customer: Customer   // not optional, can be let
    init(number: Int, customer: Customer) {
        self.number = number
        self.customer = customer
    }
    deinit { print("Card number \(number) deallocated") }
}

var sid: Customer? = Customer(name: "sid")
sid!.card = CreditCard(number: 1234, customer: sid!)

print(sid!.card!.customer.name)   

sid = nil

