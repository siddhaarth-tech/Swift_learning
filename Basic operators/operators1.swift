// Assignment Operator
var age = 20
print(age)

let (x, y) = (10, 20)
print(x)
print(y)

// = assigns a value
// == compares two values


// Arithmetic Operators

let a = 10
let b = 3

print(a + b)      // Addition
print(a - b)      // Subtraction
print(a * b)      // Multiplication
print(a / b)      // Division
print(a % b)      // Remainder

let c = 10.0
let d = 3.0
print(c / d)      // Floating-point division


// String Concatenation

let firstName = "Mobicip"
let lastName = "Parental control app"

let fullName = firstName + " " + lastName
print(fullName)


// Remainder Operator

print(9 % 4)      // 1
print(8 % 2)      // 0
print(-9 % 4)     // -1


// Unary Minus

let number = 5
let negative = -number
print(negative)

let positive = -negative
print(positive)


// Unary Plus

let value = -8
let sameValue = +value
print(sameValue)


// Compound Assignment Operators

var score = 10

score += 5
print(score)

score -= 3
print(score)

score *= 2
print(score)

score /= 4
print(score)

score %= 4
print(score)


// Comparison Operators

print(5 == 5) //is equal to
print(5 != 3) //is notequal to
print(5 > 3) //greater than
print(5 < 3) //smaller than
print(5 >= 5) //greater than or equal to
print(5 <= 3) //less than or equal to


// If Statement

let temperature = 30

if temperature > 25 {
    print("Hot")
} else {
    print("Cold")
}


// Ternary Operator

let age2 = 20
let message = age2 >= 18 ? "Adult" : "Minor"
print(message)


// Tuple Comparison

print((1, "zebra") < (2, "apple")) //true
print((3, "apple") < (3, "bird")) //true
print((4, "dog") == (4, "dog")) //true


// Logical NOT

let isLoggedIn = false
print(!isLoggedIn)


// Logical AND

let hasid = true
let hasticket = true

print(hasid && hasticket)


// Logical OR

let isWeekend = false
let isHoliday = true

print(isWeekend || isHoliday)


// Operator Precedence

let result = 5 + 3 * 2
print(result)

let result2 = (5 + 3) * 2
print(result2)
