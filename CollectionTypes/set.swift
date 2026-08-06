var languages = Set <String>()
languages = ["Swift","Python","Java"]
print(languages)
languages.insert("Java")
print(languages)
var setwitharray:Set = [1,2,3,4]
print(setwitharray)
languages.insert("Javascript")
print(languages)
if let ret = languages.remove("Java"){
    print(ret)
}
print(languages.contains("Java"))

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]


oddDigits.union(evenDigits).sorted()
// [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
oddDigits.intersection(evenDigits).sorted()
// []
oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
// [1, 9]
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()
// [1, 2, 9]