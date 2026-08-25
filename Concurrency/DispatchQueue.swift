import Foundation

DispatchQueue.global().async {
    print("Background work started")
    print(Thread.isMainThread)
    var sum = 0

    for i in 1...100 {
        sum += i
    }

    print("Sum = \(sum)")

    DispatchQueue.main.async {
        print("Result received on main queue")
        print(Thread.isMainThread)
    }
}
