import Foundation

// 1. Binary Number
let binaryNumber: UInt8 = 0b10110010
print("Binary:", binaryNumber) // 178


// 2. Bitwise NOT (~)
let initialBits: UInt8 = 0b00001111
let invertedBits = ~initialBits

print("NOT:", invertedBits)  // 240


// 3. Bitwise AND (&)

let firstBits: UInt8 = 0b1100
let secondBits: UInt8 = 0b1010

let andResult = firstBits & secondBits

print("AND:", andResult)  // 8


// 4. Bitwise OR (|)\
let orResult = firstBits | secondBits

print("OR:", orResult)   // 14

// 5. Bitwise XOR (^)
let xorResult = firstBits ^ secondBits

print("XOR:", xorResult)    // 6


// 6. Left Shift (<<)

let shiftBits: UInt8 = 4
print("Left shift 1:", shiftBits << 1) // 8
print("Left shift 2:", shiftBits << 2) // 16
print("Left shift 3:", shiftBits << 3) // 32


// 7. Right Shift (>>)

let rightShiftBits: UInt8 = 32

print("Right shift 1:", rightShiftBits >> 1) // 16
print("Right shift 2:", rightShiftBits >> 2) // 8
print("Right shift 3:", rightShiftBits >> 3) // 4


// 8. Bit Masking

let value: UInt8 = 0b10110110
let mask: UInt8 = 0b00000111

let maskedValue = value & mask

print("Masked value:", maskedValue)   // 6




// 9. Overflow Addition (&+)


let maxValue: UInt8 = 255
let overflowResult = maxValue &+ 1

print("Overflow addition:", overflowResult) // 0


// 10. Overflow Subtraction (&-)
let zeroValue: UInt8 = 0
let overflowSubtraction = zeroValue &- 1

print("Overflow subtraction:", overflowSubtraction) // 255


