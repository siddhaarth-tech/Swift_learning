func getNumber() -> Int {
    defer {
        print("Done")
    }

    return 10
}

print(getNumber())
