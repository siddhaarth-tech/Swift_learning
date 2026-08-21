import Foundation

enum UserError: Error {
    case invalidName
}

struct User {
    let name: String
    
    init(name: String) throws {
        guard !name.isEmpty else {
            throw UserError.invalidName
        }
        
        self.name = name
    }
}

do {
    let user = try User(name: "Siddhaarth")
    print("User created: \(user.name)")
} catch UserError.invalidName {
    print("User name cannot be empty")
}
