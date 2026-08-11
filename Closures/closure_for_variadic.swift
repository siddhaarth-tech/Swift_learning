let add = { (numbers: Int...) -> Int in
    var total = 0

    for number in numbers {
        total += number
    }

    return total
}

print(add(1,2,3,4))