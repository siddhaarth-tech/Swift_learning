import Foundation

@globalActor
actor MyGlobalActor {
    static let shared = MyGlobalActor()
}

@MyGlobalActor
func doWork() {
    print("Work is running on GlobalActor")
}

Task {
    await doWork()
}
