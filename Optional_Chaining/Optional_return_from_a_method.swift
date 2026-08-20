class User {
    func getEmail() -> String? {
        return "user@gmail.com"
    }
}

var user: User? = User()

let email = user?.getEmail()

print(email)
