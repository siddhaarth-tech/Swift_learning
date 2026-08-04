// Converting a String to an Int

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)

// convertedNumber is of type Int? as the Int fucntion always returns either nil or value
print(convertedNumber) 

//Unwrapping the optionals
if let final = convertedNumber{
    print(final);
}