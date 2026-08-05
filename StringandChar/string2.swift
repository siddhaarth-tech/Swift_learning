// Empty string
var a = ""
print(a)

// Empty string using initializer
var b = String()
print(b)

// isEmpty
print(a.isEmpty)

// Mutable string
var food = "Pizza"
food += " Burger"
print(food)

// Immutable string
let drink = "Juice"
print(drink)
// drink += " Water" // Error

// Value type
var x = "Cat"
var y = x

y = "Dog"

print(x)
print(y)

// Copy-on-write
var s1 = "Book"
var s2 = s1

s2 += " Store"

print(s1)
print(s2)