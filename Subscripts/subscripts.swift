struct Numbers {
    var values = [10, 20, 30]

    subscript(index: Int) -> Int {
        get {
            return values[index]
        }

        set {
            values[index] = newValue
        }
    }
}
var expScript1 = Numbers()
print(expScript1[2])
