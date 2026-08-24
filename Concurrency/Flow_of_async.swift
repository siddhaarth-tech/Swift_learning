import Foundation

func slowTask() async {
    print("Slow task started")

    try? await Task.sleep(for: .seconds(3))

    print("Slow task completed")
}

Task {
    await slowTask()
}

print("Main code continues")
