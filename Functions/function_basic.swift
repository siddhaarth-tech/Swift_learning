func repea(Name : String , Points : Int) -> (Message : String , poi : Int){
    return ("The total points obtained by \(Name) is \"\(Points)\"",Points)
}

let value = repea(Name : "Siddhaarth" , Points : 27)
print(value.Message)
