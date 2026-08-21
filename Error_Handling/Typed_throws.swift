enum MyError: Error {
    case empty
    case wrong(Int)
}

func check(_ nums: [Int]) throws(MyError) {
    
    if nums.isEmpty {
        throw .empty
    }
    
    for num in nums {
        if num < 0 || num > 100 {
            throw .wrong(num)
        }
    }
    
    print("All good")
}

do {
    try check([80, 90, 105])
} catch {
    switch error {
    case .empty:
        print("No numbers")
        
    case .wrong(let num):
        print("Wrong number: \(num)")
    }
}
