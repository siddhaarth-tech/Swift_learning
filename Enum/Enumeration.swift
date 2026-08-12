enum Scale {
    case good
    case bad
    case best
}

var scaleofvalue = Scale.good

switch scaleofvalue
{
case .good :
  print("the rating is good")

case .bad:
  print("the rating is very poor")

case .best:
  print("the rating is the best")
}
