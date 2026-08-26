import Foundation
let queue1 = DispatchQueue(label: "queue1", qos: .userInteractive,attributes: .concurrent)
let queue = DispatchQueue(label: "queue1", qos: .userInteractive,attributes: .initiallyInactive)
queue.setTarget(queue: queue1)//set taget can be used only if the queue is defined as initiallyInactive
queue.activate()//after setting we need to activate the queue
queue.sync{
  print("Hello World")
    sleep(2)
}
queue.async{
  print("byee")
}

queue1.sync{
    sleep(2)
  print("byee")
    sleep(2)
}

