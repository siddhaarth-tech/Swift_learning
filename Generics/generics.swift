func swapTwoValues<T>(_ a: inout T, _ b: inout T) -> T {
    let temporaryA = a
    a = b
    b = temporaryA
    return a
}

var f = 10
var j = 45
print(swapTwoValues(&f, &j))
print("\(f) \(j)")
