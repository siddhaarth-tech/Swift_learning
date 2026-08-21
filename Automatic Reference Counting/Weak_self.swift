class Game {
    var score = 0

    var showScore: (() -> Void)?

    init() {
        showScore = { [weak self] in
            guard let self = self else {
                print("Game no longer exists")
                return
            }

            print("Current score: \(self.score)")
        }
    }

    deinit {
        print("Game removed")
    }
}

var game: Game? = Game()

game?.score = 100

game?.showScore?()

game = nil
