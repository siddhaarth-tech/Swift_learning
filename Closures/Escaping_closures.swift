var handlers1: [() -> Void] = []//array fro closures
func noEsc(_ completion: () -> Void) {
    handlers1.append({})//appened the empty closure as the closure passed as a parameter will not have a life after the functions completed 
}


var handlers: [() -> Void] = []

func withEsc(completion: @escaping () -> Void) {
    handlers.append(completion)//here with escaping parameter the closures will have the life after the function completes 
}


noEsc() {
  print("Hello")
}
print(handlers1[0]())

withEsc() {
  print("hello world")
}
handlers[0]()//gets printed
