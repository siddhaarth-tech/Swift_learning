import Foundation

@MainActor
func showMessage() async {
    print("Updating UI")
}

Task {
    await showMessage()
}
