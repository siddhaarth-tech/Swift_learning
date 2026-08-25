import Foundation

let queue = DispatchQueue(
    label: "my.queue",
    attributes: [.concurrent, .initiallyInactive]
)

queue.async {
    print("Task 1")
}

queue.async {
    print("Task 2")
}

print("Tasks submitted")

sleep(2)

print("Activating queue")

queue.activate()
