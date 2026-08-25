import Foundation

let work = DispatchWorkItem {
    print("Work started")
    
    sleep(3)
    
    print("Work finished")
}

DispatchQueue.global().async(execute: work)

let result = work.wait(timeout: .now() + 1)

if result == .success {
    print("Work completed within the time")
} else {
    print("Work timed out")
}
