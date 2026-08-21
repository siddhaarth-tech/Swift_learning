enum MyError: Error {
    case wrong
}

func check(_ num: Int) throws -> Int {
    if num < 0 {
        throw MyError.wrong
    }
    
    return num
}

func get(_ num: Int) throws -> Int {
    let result = try check(num)
    return result
}

do {
    let num = try get(-5)
    print(num)
} catch {
    print("Wrong number")
}
