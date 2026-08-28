//Get
protocol Describable {
    var description: String { get }
}

struct Book: Describable {
    var title: String

    var description: String {
        return "Book: \(title)"
    }
}

let book = Book(title: "Swift Book")

print(book.description)
//Get and Set

protocol Adjustable {
    var volume: Int { get set }
}

struct Speaker: Adjustable {
    var volume: Int
}

var speaker = Speaker(volume: 20)

print(speaker.volume)

speaker.volume = 80

print(speaker.volume)
