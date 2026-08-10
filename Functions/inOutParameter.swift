//here the inout label variable must can be allowed to change 
func inOutfuncCheck(_ var1: inout Int ,_ var2: Int){
  print("before changing \(var1)  \(var2)")
  var1+=20 //here it is a inout paramater so it can be changed
  //var2+=10 //here it a normal parameter so it cannot be changed directly
   print("after changing \(var1)  \(var2)")

}
var a = 27
inOutfuncCheck(&a , 37)//inout parameter must be a variable not a literal
