func addFive(_ number: inout Int) {
    number += 5 //single access if used score here it will give conflict
}

var score = 10

addFive(&score)

print(score)
