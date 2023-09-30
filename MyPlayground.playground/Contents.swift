import UIKit
//Swift 5.9  set a deployment target of at least iOS 13, macOS 10.15, tvOS 13, or watchOS 6.
//swift is  open-source

/////////////////////////////////////////////////////////////// swift tour /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////simple values/////////////
var implicitvalue = 3   // can be changed
implicitvalue = 5

let explicitValue: String = "hello world"   // can not be changed


//Experiment Create a constant with an explicit type of Float and a value of 4.
let explicitConst: Float = 4

//Experiment Try removing the conversion to String from the last line. What error do you get?
let label = "The width is "
let width = 94
let widthLabel = label + String(width)    // Binary operator '+' cannot be applied to operands of type 'String' and 'Int'

//Experiment Use \() to include a floating-point calculation in a string and to include someone’s name in a greeting.           (string interpolation)
let floatPoint : Float = 11.22
print("the float point is \(floatPoint)")

// we use the """ to add multible lines in btween """

//arrays
var array: [Int] = [1,2,3]
var arr = [String]()
var arr1: [Float] = []
array[2]
array.append(4)

// dictionaries
var dic: [String: Int] = [:]
dic["a"] = 1
dic["b"] = 2
dic["c"] = 3
//print(dic["c"])
print (dic.keys)  // ["b", "a"]     not set not an array type
print (dic.values)  // [2, 1]
print( type(of: dic.keys ))   /////// Keys type  from Collection protocol
 
////////////control flow//////////////
var scores = [22,33,44,5,56]
let myScore = 60
let score =  myScore > 50 ? "🎉" :""

//let scoreDecoration = if myScore > 10 {
//    "🎉"
//} else {
//    ""
//}
for s in  scores {
   if s > 50 {
      print("you win 🎉")
    }else{
        print("you lose !")
    }
   
}
print (score)


//////////////////optional value //////////////////
var optionalValue: String? = "hello!"
if let greeting = optionalValue {
    print(greeting)
}
//Experiment Change optionalValue to nil. What greeting do you get? Add an else clause that sets a different greeting if optionalName is nil.
var optionalValue1: String?
if let greeting1 = optionalValue1 {
    print(greeting1)
}else{
    print("greeting is nil becaus optional value is nil")
}
//we can also use the ?? to assign a default value if its nill
var optionalValue2: String?
print (optionalValue2 ?? "im a default value")



///////////////switch//////////////
let weekDay = "monday"
switch weekDay{
case "monday":
    print("today is monday")
case "friday":
    print("today is friday")
default:                                 ////Switch must be exhaustive
    print("wrong day")
}

//Experiment Try removing the default case. What error do you get?  ////Switch must be exhaustive

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]

for (key,value) in interestingNumbers{
    for i in value {
        if i > 10 {
            print ("the nymber is \(i) and it is \(key) ")
        }
    }
}


////////////////////while ,repeat while ///////////////////////////////////////
var i = 8
while i>=0 {
    print(i)
    i-=1
}

repeat{            ///////will print at least once
    print(i)
    i+=1
}while i>10


//////////////////////range of indexes/////////////////////////
var x = 0
for i in 0..<6{
    x+=1
    print(i)         //  1 2 3 4 5
}
print(x)   // 6


///////////////////////////function and closure/////////////////////
