func printHello() -> (String,String){ //here the return type tuple has no named label so it is accesed using the index
    return ("hello", "hello all")
}
print(printHello().1)//here the .index are used to access the tuples which is returned


func printHello() -> (str1 : String, str2 :String){ //here the str1 and str2 are the names given for the return type 
    return ("hello", "hello all")
}
print(printHello().str2)//here the nmaed lable is used to get the value form the tuple


