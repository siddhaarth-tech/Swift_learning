import Foundation
let source = DispatchSource.makeTimerSource()

source.schedule(
    deadline: .now() + 1,//starting time
    repeating: 2
)

source.setEventHandler {
    print("Timer fired")
}

source.resume()
sleep(10)
