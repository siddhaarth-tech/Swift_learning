import Foundation

enum NumberError: Error {
    case invalidNumber
}

func getNumber(_ boolean : Bool) throws -> Int {
    if boolean {
        return 2
    }else{
        throw NumberError.invalidNumber
    }
}

let number = try! getNumber(true)

print("Number: \(number)")
