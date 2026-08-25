import Foundation

// 1. User is waiting for this → high priority
DispatchQueue.global(qos: .userInitiated).async {
    print("Generate photo preview")
}


// 2. Can happen when the system has spare time
DispatchQueue.global(qos: .background).async {
    print("Clean old cached photos")
}


// 3. Takes some time, but user doesn't need it immediately
DispatchQueue.global(qos: .utility).async {
    print("Upload photo to server")
}
