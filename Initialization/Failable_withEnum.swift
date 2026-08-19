// Without Raw Value + Failable Initializer

enum Direction {
    case north
    case south
    case east
    case west

    init?(value: String) {
        switch value {
        case "north":
            self = .north
        case "south":
            self = .south
        case "east":
            self = .east
        case "west":
            self = .west
        default:
            return nil
        }
    }
}


let direction0 = Direction(value: "hello")

if let direction = direction0 {
    print(direction)
} else {
    print("Invalid direction")
}

// With Raw Value + Failable Initializer

enum DirectionCode: String {
    case north = "N"
    case south = "S"
    case east = "E"
    case west = "W"
}

let direction1 = DirectionCode(rawValue: "N")

if let direction1 = direction1 {
    print(direction1)
} else {
    print("Invalid direction")
}

let direction2 = DirectionCode(rawValue: "X")

if let direction2 = direction2 {
    print(direction2)
} else {
    print("Invalid direction")
}
o
