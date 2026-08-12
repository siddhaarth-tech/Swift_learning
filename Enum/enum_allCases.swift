enum Scale  : CaseIterable{
  //here CaseIterable is used to iterrate over these enums in future
    case good
    case bad
    case best
}
let scaleofvalue = Scale.good

switch scaleofvalue
{
case .good :
  print("the rating is good")
//all cases should be used in switch so we must use default to handle those errors
default:
  print("Default")
}
print(Scale.allCases.count)
for scale in Scale.allCases{
  print(scale)
}


