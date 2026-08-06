// Both of these are identical — prefer the shorter literal form
var a: [Int] = []
var b = [Int]()

// Reassign to empty at any time
a.append(3)
print(a)
a = []   // still [Int], just empty
print(a)

// Array of 3 zeros
var zeros = Array(repeating: 0, count: 3)       // [0, 0, 0]
print (zeros)
// Array of 5 false booleans — useful for flags/visited grids
var boolean = Array(repeating: false, count: 5)   // [false, false, false, false, false]
print (boolean)
// 2D grid — common in interview problems and game boards
var grid = Array(repeating: Array(repeating: 0, count: 4), count: 3)
// [[0,0,0,0], [0,0,0,0], [0,0,0,0]]
print (grid)

var numbers = [1,2,3]
print(numbers)
numbers.append(4)
print(numbers)

var shoppingList = [
    "Eggs",
    "Milk",
]

if shoppingList.isEmpty {
    print("The shopping list is empty.")
} else {
    print("The shopping list isn't empty.")
}
print(shoppingList)
shoppingList.append("Flour")
print(shoppingList)
shoppingList += ["Baking Powder"]
print(shoppingList)
// shoppingList now contains 4 items
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
print(shoppingList)
var firstItem = shoppingList[0]
shoppingList[0] = "Six eggs"
print(shoppingList)
print(shoppingList.count)
shoppingList[4...6] = ["Bananas", "Apples"]
print(shoppingList)
print(shoppingList.count)
shoppingList.insert("Maple Syrup", at: 0)
print(shoppingList)
let mapleSyrup = shoppingList.remove(at: 0)
print(shoppingList)
let apples = shoppingList.removeLast()
print(shoppingList)
