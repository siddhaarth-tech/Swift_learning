func areSame<T>(_ first: T, _ second: T) -> Bool where T: Equatable {
    return first == second
}


// Int
let numberResult = areSame(10, 10)
print("Numbers same:", numberResult)


// String
let stringResult = areSame("Hello", "Hello")
print("Strings same:", stringResult)


// Bool
let boolResult = areSame(true, false)
print("Booleans same:", boolResult)

//Non-Equatable
class Empty{
    
}
var empty1 = Empty()
var empty2 = Empty()



//let emptyResult = areSame(empty1, empty2)
//print("Empties same:", emptyResult)
