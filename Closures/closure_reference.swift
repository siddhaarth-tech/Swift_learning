func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer//here the function returns the closure
}

let incrementByTen = makeIncrementer(forIncrement: 10)//a closure with its own values
print(incrementByTen())//10
let incrementBysix = makeIncrementer(forIncrement: 6)//here also have its own value for variables not shared with iincrementbyTen
print(incrementBysix())//6
print(incrementByTen())//20
let duplicateAddByTen = incrementByTen //values of this closures are shared as it is used by reference
print(duplicateAddByTen())//30