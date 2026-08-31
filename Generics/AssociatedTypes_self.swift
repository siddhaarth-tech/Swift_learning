protocol AnimalContainer {
    associatedtype Animal

    mutating func add(_ animal: Animal)
    var count: Int { get }
}


// A container that can return another container
protocol AnimalSuffixContainer: AnimalContainer {
    
    associatedtype Result: AnimalSuffixContainer
        where Result.Animal == Animal
    
    func lastAnimals(_ number: Int) -> Result
}


//actual container
struct Zoo: AnimalSuffixContainer {
    
    var animals: [String] = []
    
    mutating func add(_ animal: String) {
        animals.append(animal)
    }
    
    var count: Int {
        return animals.count
    }
    
    func lastAnimals(_ number: Int) -> Zoo {
        var result = Zoo()
        
        for index in (count - number)..<count {
            result.add(animals[index])
        }
        
        return result
    }
}


// Create a Zoo
var zoo = Zoo()

zoo.add("Lion")
zoo.add("Tiger")
zoo.add("Elephant")


// Get the last 2 animals
let result = zoo.lastAnimals(2)

print("Original Zoo:")
print(zoo.animals)

print("Last 2 animals:")
print(result.animals)

W
