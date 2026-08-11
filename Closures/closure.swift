//closures expressions are one time usable without declaring as functions

// { parameters -> returnType in
//     body
// }

var names = ["Sidhaarth","Aathavan","Nilesh","Bharani"]
let sortedvalues = names.sorted(by: { (s1: String, s2: String) -> Bool in
    return s1 < s2
})
print(sortedvalues)

//Type Inference(Swift sees the type and handles it )

var names = ["Sidhaarth","Aathavan","Nilesh","Bharani"]
let sortedvalues = names.sorted(by:{ s1, s2 in
    return s1 < s2
})
print(sortedvalues)

//after using shorthands
let reversedNames = names.sorted(by: { $0 > $1 })
print(reversedNames)

