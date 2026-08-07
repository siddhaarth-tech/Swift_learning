var nums = [3, 1, 2]
let ascending = nums.sorted()
print(ascending)
nums.sort(by: <)
print(nums)


let nums = [1, 2, 3, 4]
let doubled = nums.map { $0 * 2 }
print(doubled)
let evens = nums.filter { $0 % 2 == 0 }
print(evens)
let sum = nums.reduce(0, +)
print(sum)

let raw :Set<Character> = ["1", "x", "2", "3"]
let ints = raw.compactMap { Int(String($0)) } 
print(ints)  // [1, 2, 3]

let arr = [10, 20, 30]
for i in arr.indices {
  print("index: \(i), value: \(arr[i])")
}