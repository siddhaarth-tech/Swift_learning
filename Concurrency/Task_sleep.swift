import Foundation

func doSomething() async throws {
    print("Started")

    try await Task.sleep(for: .seconds(3))

    print("Finished")
}

Task {
    
    do {
        try await doSomething()
    }
        print("hello world")
}
