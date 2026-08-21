import Foundation

enum DivisionError: Error {
    case divideByZero
}

func divide(_ number: Int, divisor: Int) throws -> Int {
    if divisor == 0 {
        throw DivisionError.divideByZero
    }

    return number / divisor
}

do {
    let result = try divide(10, divisor: 0)
    print("Result: \(result)")
} catch DivisionError.divideByZero {
    print("Cannot divide by zero")
} catch {
    print("unknown error occurs")
}
