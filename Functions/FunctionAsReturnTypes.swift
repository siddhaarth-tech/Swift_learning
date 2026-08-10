func adding(_ a:Int,_ b:Int)->Int{
  return a+b
}
func multiply(_ a:Int ,_ b:Int)->Int{
  return a*b
}

func funcAsReturnType(_ boolean: Bool)->(Int,Int)->Int{
  return boolean ? adding : multiply
}
var function = funcAsReturnType(true)//Function is stored here
print(function(20,30))//used here
