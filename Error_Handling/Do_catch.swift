import Foundation

enum AgeError: Error {
    case tooYoung
}

func checkAge(_ age: Int) throws {
    if age < 18 {
        throw AgeError.tooYoung
    }

    print("Age is valid")
}

do {
    try checkAge(15)
} catch AgeError.tooYoung{
    print("Age is too young")
}
