func addOp(_ a:Int,_ b: Int) -> Int{
  return a+b
}

func multiplyOp(_ a:Int,_ b: Int) -> Int{
  return a*b
}
func increment(_ a:Int) -> Int{
  return a+1
}
//var operations : (Int ,Int)->Int ---> defining the function type 
var operations = addOp
print(operations(27,3))
operations = multiplyOp
print(operations(27,3))

//here operations = operationForOne is not able to be used for the increment as they have different fucntion type so new variable must be used to assign that type 

var operationForOne = increment
print(operationForOne(27))


//Function Type as Parameter
func useAnyFunction (_ operations: (Int,Int)->Int ,_ a: Int,_ b: Int) -> Int{
  return operations(a,b)
}
print(useAnyFunction(addOp,27,3))
