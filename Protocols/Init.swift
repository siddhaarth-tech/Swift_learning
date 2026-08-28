protocol Identify {
    init(id: Int)
}

struct User: Identify {
    var id: Int

    init(id: Int) {
        self.id = id
    }
}

let user = User(id: 109)

print(user.id)
