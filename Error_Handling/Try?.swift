import Foundation

enum NumberError: Error {
    case invalidNumber
}

func getNumber() throws -> Int {
    throw NumberError.invalidNumber
}

let number = try? getNumber()

if let number = number {
    print("Number: \(number)")
} else {
    print("Could not get a number")
}
