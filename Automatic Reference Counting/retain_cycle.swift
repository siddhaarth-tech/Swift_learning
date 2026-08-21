class Library {
    let libraryName: String
    var book: Book?

    init(libraryName: String) {
        self.libraryName = libraryName
    }

    deinit {
        print("\(libraryName) deallocated")
    }
}

class Book {
    let title: String
    var library: Library?   // strong, this causes the cycle

    init(title: String) {
        self.title = title
    }

    deinit {
        print("Book \(title) deallocated")
    }
}

var libraryA: Library? = Library(libraryName: "District Library")
var bookA: Book? = Book(title: "Swift Basics")

libraryA!.book = bookA
bookA!.library = libraryA

libraryA = nil
bookA = nil
print("No Deinit is called")

class Book2 {
    let title: String
    weak var library: Library?   // weak breaks the cycle

    init(title: String) {
        self.title = title
    }

    deinit {
        print("Book \(title) deallocated")
    }
}

var libraryB: Library? = Library(libraryName: "Central Library")
var bookB: Book2? = Book2(title: "iOS Development")

bookB!.library = libraryB

libraryB = nil
bookB = nil
