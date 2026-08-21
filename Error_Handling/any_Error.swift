enum MyError: Error {
    case wrong
}

enum YourError: Error {
    case bad
}

func check(_ num: Int) throws(any Error) {
    if num < 0 {
        throw MyError.wrong
    }
    
    if num == 0 {
        throw YourError.bad
    }
    
    print("Number is okay")
}

do {
    try check(0)
} catch YourError.bad{
    print("Wrong Number")
}
catch{
    print("Something went wrong")
}
D
