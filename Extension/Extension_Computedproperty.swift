struct Rectangle {
    let width: Double
    let height: Double
}

extension Rectangle {
    var area: Double {
        width * height
    }
}

let rectangle = Rectangle(width: 10, height: 5)

print(rectangle.area)
