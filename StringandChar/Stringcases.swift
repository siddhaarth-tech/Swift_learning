import Foundation
switch "Apple".compare("Banana") {
case .orderedAscending:
    print("Apple comes first")
case .orderedSame:
    print("Equal")
case .orderedDescending:
    print("Banana comes first")
}



let str = "Swift"
let secondstr = "swift"
//compares without cases
print(.orderedSame == str.caseInsensitiveCompare(secondstr))

let files = [
    "file10",
    "file2",
    "file1"
]

let sorted = files.sorted {
    $0.localizedStandardCompare($1) == .orderedAscending
}

print(sorted)