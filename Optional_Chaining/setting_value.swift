class Game {
    var level = 1
}

var game: Game? = Game()

game?.level = 10

print(game?.level)
game  = nil
print(game?.level)
