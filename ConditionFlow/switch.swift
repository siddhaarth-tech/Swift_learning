let grade = "B"

switch grade { //every case will break automactially without the break statement
case "A":
    print("Excellent")
case "B":
    print("Very Good")
case "C":
    print("Good")
default:
    print("Unknown")//if none matchees than the default executes
}


let reviewScore: Int? = 5
//optionals has two enums .some(value) and .none
switch reviewScore {
case .some(5):
    print("Perfect score")
case .some(let score):
    print("Logged a score of \(score)")
case .none:
    print("No score entered")
}

let somePoint = (10, 0)

switch somePoint {

case (0,0):
    print("(0,0) is at the origin")

case (_,0):
    print("On the x-axis")

case (0,_):
    print("On the y-axis")

case (-2...2,-2...2):
    print("Inside the box")

default:
    print("Outside the box")

}

let point = (2, 5)

switch point {
case (let x, let y):
    print(x, y) //prints by storing the value by case let
}
