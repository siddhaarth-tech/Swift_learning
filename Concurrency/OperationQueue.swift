import Foundation

let queue = OperationQueue()

//Give the queue a name
queue.name = "My Queue"

// maximum 2 operations at the same time
queue.maxConcurrentOperationCount = 2

// set the priority/QoS
queue.qualityOfService = .userInitiated

// add one operation
queue.addOperation {
    print("Operation 1 Start")
    sleep(2)
    print("Operation 1 End")
}

// add multiple operations
let operation2 = BlockOperation {
    print("Operation 2 Start")
    sleep(2)
    print("Operation 2 End")
}

let operation3 = BlockOperation {
    print("Operation 3 Start")
    sleep(2)
    print("Operation 3 End")
}
//now Operation2 is dependent on Operation3
operation2.addDependency(operation3)

queue.addOperations(
    [operation2, operation3],
    waitUntilFinished: false
)

//customise the no of concurrent Operations
queue.maxConcurrentOperationCount = 2

// checks how many operations are in the queue
print("Operation count:", queue.operationCount)

// suspend the queue
queue.isSuspended = true

print("Queue suspended")

// No new operations will Start while suspEnded

sleep(1)

// Resume the queue
queue.isSuspended = false

print("Queue resumed")

// Wait until all operations finish
queue.waitUntilAllOperationsAreFinished()

print("All operations finished")
