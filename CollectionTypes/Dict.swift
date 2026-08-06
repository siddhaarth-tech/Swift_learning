var namesOfIntegers: [Int: String] = [:]
print(namesOfIntegers[2]) // nill
namesOfIntegers[16] = "sixteen"
// namesOfIntegers now contains 1 key-value pair
namesOfIntegers = [:]
var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
airports["LHR"] = "London"
airports["APL"] = "Apple International"
airports["APL"] = nil//removed