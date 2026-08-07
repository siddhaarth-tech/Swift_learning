func greet(person: String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}
print(greet(person :"Sid"))


func minMax(array: [Int]) -> (min: Int, max: Int)? { //mutiple return value as a tuple to return asa single entity
    if array.isEmpty {//handled the optionals 
        return nil
    }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        // If a smaller value is found, update currentMin
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    // Return both values as one tuple
    return (currentMin, currentMax)
}

if let bound = minMax(array: [8, -6, 2, 109, 3, 71]) {
//used the if let for the optional binding if the function returns a optional
    print("Minimum =", bound.min)
    print("Maximum =", bound.max)

}
