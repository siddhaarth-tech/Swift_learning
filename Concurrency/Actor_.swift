import Foundation
actor Counter {
    var value = 0

    func increment() {
        value += 1
    }
}

let counter = Counter()

Task {
    await counter.increment()
    await counter.increment()

    print(await counter.value)
}
