import Foundation

func getMessage() async -> String {
    return "Hello async func"
}

Task {
    let message = await getMessage()
    print(message)
}
