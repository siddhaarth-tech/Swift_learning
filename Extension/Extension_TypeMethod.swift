struct Calculator {
}

extension Calculator {
    static func add(_ a: Int, _ b: Int) -> Int {
        a + b
    }
}

let result = Calculator.add(10, 20)

print(result)
