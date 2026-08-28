extension Int {
    func repetitions(task: () -> Void) {
        for _ in 0..<self {
            task()
        }
    }
}
func printHello() -> () {
    print("hello World")
}
4.repetitions(task: printHello)

3.repetitions{
    print("uses closures")
}
