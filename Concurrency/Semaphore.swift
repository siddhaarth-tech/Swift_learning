import Foundation

let semaphore = DispatchSemaphore(value: 2)

for i in 1...5 {
    DispatchQueue.global().async {
        
        semaphore.wait()
        
        print("Task \(i) start")
        
        sleep(2)
        
        print("Task \(i) end")
        
        semaphore.signal()
    }
}


