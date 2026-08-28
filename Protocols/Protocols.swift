
protocol Playable {
    func play()
}

struct Guitar: Playable {
    func play() {
        print("Guitar is playing")
    }
}

struct Piano: Playable {
    func play() {
        print("Piano is playing")
    }
}

let guitar = Guitar()
let piano = Piano()

guitar.play()
piano.play()
