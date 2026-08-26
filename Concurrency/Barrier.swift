import Foundation
let queue = DispatchQueue(label: "queue1", qos: .userInteractive,attributes: .concurrent)
queue.async {
    print("A start")
    sleep(5)
    print("A end")
}

queue.async {
    print("B start")
    sleep(2)
    print("B end")
}

queue.async(flags: .barrier) {
    print("BARRIER start")
    sleep(1)
    print("BARRIER end")
}

queue.async {
    print("C start")
    sleep(2)
    print("C end")
}
