struct Point {
    var x: Int
    var y: Int

    // + operator
    static func + (a: Point, b: Point) -> Point {
        return Point(x: a.x + b.x, y: a.y + b.y)
    }

    // - prefix operator
    static prefix func - (point: Point) -> Point {
        return Point(x: -point.x, y: -point.y)
    }

    // += operator
    static func += (a: inout Point, b: Point) {
        a = a + b
    }

    // == operator
    static func == (a: Point, b: Point) -> Bool {
        return a.x == b.x && a.y == b.y
    }
}

// Create points
var p1 = Point(x: 2, y: 3)
let p2 = Point(x: 4, y: 5)

// +
let p3 = p1 + p2
print(p3)          // Point(x: 6, y: 8)

// Prefix -
let p4 = -p1
print(p4)          // Point(x: -2, y: -3)

// +=
p1 += p2
print(p1)          // Point(x: 6, y: 8)

// ==
print(p1 == p2)    // false
