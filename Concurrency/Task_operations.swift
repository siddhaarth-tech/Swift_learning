import Foundation

func getUserName() async -> String {
    try? await Task.sleep(for: .seconds(2))
    return "Siddhaarth"
}

func getUserAge() async -> Int {
    try? await Task.sleep(for: .seconds(1))
    return 17
}

let nameTask = Task {
    return await getUserName()
}


let name = await nameTask.value

print("Name:", name)

async let userName = getUserName()
async let userAge = getUserAge()

let name2 = await userName
let age = await userAge

print("User:", name2)
print("Age:", age)
