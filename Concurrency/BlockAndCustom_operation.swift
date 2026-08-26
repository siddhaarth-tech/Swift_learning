import Foundation

let queue = OperationQueue()

// BlockOperation
let blockOperation = BlockOperation {
    print("Block operation")
}

// Custom Operation
class MyOperation: Operation {
    override func main() {
        print("Custom operation")
    }
}

let customOperation = MyOperation()

// Add BOTH to the same queue
queue.addOperations(
    [blockOperation, customOperation],
    waitUntilFinished: true
)

print("Finished")
