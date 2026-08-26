import Foundation

class MyOperation: Operation {
    
    override func main() {
        print("Hello World from custom Operation")
    }
}

let operation = MyOperation()

let queue = OperationQueue()
queue.addOperation(operation)
