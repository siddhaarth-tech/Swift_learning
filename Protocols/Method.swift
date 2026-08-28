protocol Payable {
    func calculatePayment() -> Double
}

struct Employee: Payable {
    var hours: Double
    var rate: Double

    func calculatePayment() -> Double {
        return hours * rate
    }
}

let employee = Employee(hours: 40, rate: 25)

print(employee.calculatePayment())
