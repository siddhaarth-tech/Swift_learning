struct Box {
    var value = 0

    mutating func copyValue(from other: inout Box) {
        value = other.value
    }
}

var box1 = Box()
var box2 = Box()

box1.copyValue(from: &box2)
//box1.copyValue(from: &box1) //  Conflict
