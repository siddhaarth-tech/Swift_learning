//Variadic Parameters - which can accept zero or more values of a specific type

//here the variadic values are converted to the arrays of the specific data type and they are initialised as "CONSTANTS so they cannot be manipulated "
func printHello(_ arry1 : Int...) -> (str1 : String, str2 : String){
    return (str1 : "\(arry1[3])", str2 : "\(arry1[4])")
}
print(printHello(1,2,3,4,5).1)//Tuple accessing

//Multiple parameters with Variadic parameters
func printHello(_ arry1 : Int...,number: Int){ // here the function must have the argument label after the variadic parameter to distinguish
    print("hello")
}
printHello(1,2,3,4,5,number : 27)
