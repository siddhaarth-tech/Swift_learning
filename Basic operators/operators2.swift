// Nil-Coalescing Operator

let defaultcol = "Red"
var userColor: String?

let color = userColor ?? defaultcol
print(color)          // Red

userColor = "Green"

let color2 = userColor ?? defaultcol
print(color2)         // Green


// Closed Range Operator (...)

for number in 1...5 {
    print(number)
}


// Half-Open Range Operator (..<)

let names = ["Anna", "Alex", "Brian", "Jack"]

for i in 0..<names.count {
    print(names[i])
}


// One-Sided Range From Index

for name in names[2...] {
    print(name)
}


// One-Sided Range To Index

for name in names[...2] {
    print(name)
}


// One-Sided Half-Open Range

for name in names[..<2] {
    print(name)
}


// Checking a One-Sided Range

let range = ...5

print(range.contains(7))    // false
print(range.contains(4))    // true
print(range.contains(-1))   // true


// Logical NOT

let allowedEntry = false

if !allowedEntry {
    print("ACCESS DENIED")
}


// Logical AND

let enteredDoorCode = true
let passedRetinaScan = false

if enteredDoorCode && passedRetinaScan {
    print("Welcome")
} else {
    print("ACCESS DENIED")
}


// Logical OR

let hasDoorKey = false
let knowsOverridePassword = true

if hasDoorKey || knowsOverridePassword {
    print("Welcome")
} else {
    print("ACCESS DENIED")
}


// Combining Logical Operators

if enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword {
    print("Welcome")
} else {
    print("ACCESS DENIED")
}


// Explicit Parentheses

if (enteredDoorCode && passedRetinaScan) || hasDoorKey || knowsOverridePassword {
    print("Welcome")
} else {
    print("ACCESS DENIED")
}


// Tuple Comparison

print((1, "zebra") < (2, "apple"))
print((3, "apple") < (3, "bird"))
print((4, "dog") == (4, "dog"))

// Tuples with fewer than 7 elements can be compared directly.
// Tuples with 7 or more elements require custom comparison.
