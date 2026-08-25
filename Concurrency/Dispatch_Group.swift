import Foundation

let group = DispatchGroup()

group.enter()

DispatchQueue.global().async {
    print("Task A started")

    sleep(2)

    print("Task A finished")

    group.leave()
}

group.enter()

DispatchQueue.global().async {
    print("Task B started")

    sleep(4)

    print("Task B finished")

    group.leave()
}
group.wait(timeout: .now() + 2)//only moves to next after all the task on the group got executed

print("Now got resumed")
group.enter()

DispatchQueue.global().async {
    print("Task C started")

    sleep(1)

    print("Task C finished")

    group.leave()
}

group.notify(queue: .main) {
    print("All tasks finished")
}
