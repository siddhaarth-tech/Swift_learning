func check(value: @autoclosure () -> Int) {
    print("Before")
    print(value())
    print("After")
}

check(value: 10 + 20)