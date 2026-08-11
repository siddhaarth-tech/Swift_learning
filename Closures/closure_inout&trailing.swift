var closure = {(_ a:Int,_ b:Int) -> Int in
  return a+b 
}
print(closure(27,3))

//In-Out parameters
var number = 10

let changeNumber = { (value: inout Int) in
    value += 5
}
changeNumber(&number)
print(number)

func printString(_ str1: String , closureFunc: (String) -> String){
  print("\(str1) \(closureFunc("Siddhaarth"))")
}
//normal closure
printString("Hello",closureFunc :{s1 in return "I am \(s1)"})


//Trailing closure
printString("hello"){
  "I am \($0)"
}