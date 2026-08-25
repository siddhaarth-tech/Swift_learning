import Foundation

let targetQueue = DispatchQueue(
    label: "target.queue"
)

let queue1 = DispatchQueue(
    label: "queue1",
    attributes: [.concurrent , .initiallyInactive] //used array to share both attributes
)
//let queue1 = DispatchQueue(
//    label: "queue1",
//    attributes: .initiallyInactive  //here only initiallyInactive is used
//)

let queue2 = DispatchQueue(
    label: "queue2",
    attributes: [.concurrent , .initiallyInactive]
)

queue1.setTarget(queue: targetQueue)
queue2.setTarget(queue: targetQueue)

queue1.async {
    print("Task from Queue 1")
}

queue2.async {
    print("Task from Queue 2")
}
queue1.activate()
queue2.activate()
