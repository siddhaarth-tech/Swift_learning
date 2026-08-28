protocol PrinterDelegate: AnyObject {
    func printMessage()
}

class Printer {
    weak var delegate: PrinterDelegate?

    func start() {
        print("Printer started")
        delegate?.printMessage()
    }
}

class MyClass: PrinterDelegate {
    func printMessage() {
        print("Hello from delegate!")
    }
}

let printer = Printer()
let myObject = MyClass()

printer.delegate = myObject
printer.start()
