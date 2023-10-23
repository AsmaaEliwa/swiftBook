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
print(#"Write an interpolated string in Swift using \(multiplier)."#) // Prints "Write an interpolated string in Swift using \(multiplier)."
print(#"6 times 7 is \#(6 * 7)."#)    // Prints "6 times 7 is 42."


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
 

/////////////////////////////////////tuples vs arrays /////////////////////////////
let person: (String, Int, Bool) = ("Alice", 25, true)    //fixed number of elements and we have to define the type when creating
let name = person.0 // Access elements by index
let age = person.1
let isActive = person.2





////////////control flow//////////////
var scores = [22,33,44,5,56]
let myScore = 60
let score =  myScore > 50 ? "🎉" : ""

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
//Forced Unwrapping with !:
let unwrappedValue = optionalValue!
//Optional Chaining:
let result = optionalInstance?.propertyOrMethod()
//Implicitly Unwrapped Optionals:
var implicitlyUnwrappedOptional: SomeType!
let value = implicitlyUnwrappedOptional // Automatically unwrapped
//try? for Error Handling:
let result = try? someThrowingFunction()




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
    print(i)         // 0 1 2 3 4 5
}
print(x)   // 6


///////////////////////////function and closure/////////////////////
func greet(_ fName: String ,_ lName: String){
    print ("hello \(fName) \(lName)")
}
greet("asmaa","eliwa")


//tuple return
func relation(_ a:Int ,_ b:Int)->(min:Int , max:Int , rel:String){
    var min = 0
    var max = 0
    var rel = ""
    if a > b {
        min = b
        max = a
        rel = "f is gretter than s "
    }else{
        min = a
        max = b
        rel = "s is gretter than f "
    }
    return (min ,max , rel)
}
print(relation(2,3))


//Nested functions

func addOne(_ a:Int)->Int{
    return a+1
    
}
func nestedFunc(){
    var c = 5
    var b = addOne(c)
    print(b)
}
nestedFunc()   //6

//Functions are a first-class type. This means that a function can return another function as its value.
func firstClass()->((Int) -> Int){
    return addOne     // this will return a function
}
print(firstClass())   //function

//A function can take another function as one of its arguments.
func withCallBack (_ callBack: (Int)-> Int)-> Int{
    var l = 9
    return callBack(l)  //this will return the output of the function wich is integer
}
print(withCallBack(addOne))    //10


///////////////////////////closures//////////////////////
var numbers = [1,2,3,4]
var mapNums = numbers.map({ (num: Int)-> Int in
    var result = num + 1
    if num % 2 != 0{
       return 0
    }else{
        return result
    }
    
})
print(mapNums)    //return 0 for odd numbers
let mappedNumbers = numbers.map({ number in 3 * number })   //  we could also do it like this
let sortedNumbers = numbers.sorted(){$0 > $1}   //{ $0 > $1 }: This is a closure expression that specifies the sorting order. In this case, it's used to sort the numbers in descending order. Here's what this closure does:$0 and $1 are shorthand argument names for the two elements being compared during the sorting process.
print(sortedNumbers)    ///[4, 3, 2, 1]
//let num = numbers.map({n in 3 * n })

//////////////////////////////class/////////////////////////////////
class Shape{
    var area : Int = 15
    var color: String = "red"
    var name:String
   
    func showArea(){
        print(area)
    }
    func sayName(){
        print(name)
    }
    deinit{  //Use deinit to create a deinitializer if you need to perform some cleanup before the object is deallocated.
        print("\(name) is dellocated")
    }
    var notStoredPropaperty : Int{   //In addition to simple properties that are stored, properties can have a getter and a setter.
        get{
            return area*2
        }
        set{
            area = newValue
        }
    }
    var willdidset: String {
        willSet{
            print("new value is \(newValue)")
        }
        didSet{
            print("old value is \(oldValue)")
        }
    }
    init(_ name:String ,_ willdidset: String ){
        self.name = name
        self.willdidset = willdidset
    }
}
var circle: Shape? = Shape("circle", "asmaa")
circle?.showArea()     // 15
circle?.color   //red
circle?.name
circle = nil   //to do this the class instance has to be optional

class Rectangle: Shape{    //inhiratence
    var size: Int
    init(size: Int){
        self.size = size
        super.init("rectangle","willdidset")
    }
    override func sayName(){
        print(size)
        
    }
}

var rec : Rectangle = Rectangle(size: 20)
print(rec.sayName())
print(rec.showArea())
rec.notStoredPropaperty = 90    /// that will make the area = newValue = 90
print(rec.showArea())
print(rec.notStoredPropaperty)
rec.willdidset = "asmaa Eliwa"


//enumeration

enum Days{
    case monday
    case tusday
    case wednsday
    case thursday
    case friday
    case sutrday
    case sunday
}
var day: Days = .monday

//struct
struct color{
    var name: String
    func hexaValue(){
        
    }
}
var red = color(name: "red")
red.hexaValue()


///concerency
//func willTakeTime(_ prin:Int)async-> Bool{
//    var fetchData = 9
//    return fetchData == prin
//}
//Task {
////    await connectUser(to: "primary")
//}
//Use Task to call asynchronous functions from synchronous code, without waiting for them to return.
//var  answer = await willTakeTime(4)


//protocol
//Classes, enumerations, and structures can all adopt protocols.
protocol proto{
    var description: String {get}
    mutating func showdeta()     // must not have body
        
    }


class Vehicl: proto{
    var description = "hello"
    func showdeta() {
        print("hi")
        
    }
}

/////////////////////////extension////////////////////
///Use extension to add functionality to an existing type, such as new methods and computed properties. You can use an extension to add protocol conformance to a type that’s declared elsewhere, or even to a type that you imported from a library or framework
extension Int{
    func prime(){
//        if self/
    }
}

///////////////////////error handling////////////////////////
enum PrinterError: Error {
    case outOfPaper
    case noToner
    case onFire
}
func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Never Has Toner" {
        throw PrinterError.noToner
    }
    return "Job sent"
}
do {
    let printerResponse = try send(job: 1040, toPrinter: "Bi Sheng")
    print(printerResponse)
} catch {
    print(error)
}
let printerSuccess = try? send(job: 1884, toPrinter: "Mergenthaler")

////////////////generic/////////////
///Writing <T: Equatable> is the same as writing <T> ... where T: Equatable.
///
///
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Basics///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Swift is a type-safe language, which means the language helps you to be clear about the types of values your code can work with.
//Constants and variables
//type annotation
var welcomMessage: String
welcomMessage = "hello"


//string interpolation
print("the welcom message is \(welcomMessage)")


//semicolon
let cat = "🐱"; print(cat)   // Prints "🐱"             if we want to put 2 line of code next to eachother

//Intger
let minValue = UInt8.min  // minValue is equal to 0, and is of type UInt8
let maxValue = UInt8.max  // maxValue is equal to 255, and is of type UInt8

//UInt
//only when you specifically need an unsigned integer type with the same size as the platform’s native word size.
//Double has a precision of at least 15 decimal digits, whereas the precision of Float can be as little as 6 decimal digits.
//Type inference enables a compiler to deduce the type of a particular expression automatically when it compiles your code, simply by examining the values you provide.
var num = 9  // the compiller will know that this is an Int type
 //numeric literals
let decimalInteger = 17
let binaryInteger = 0b10001       // 17 in binary notation
let octalInteger = 0o21           // 17 in octal notation
let hexadecimalInteger = 0x11     // 17 in hexadecimal notation


let pi = 1.34
print(Int(pi))

//let i = 1
//if i {
//    // this example will not compile, and will report an error
//}

//tuple
let http200Status = (statusCode: 200, description: "OK")

//optional
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)  // The type of convertedNumber is "optional Int" becaus it will might fail
//Int?. An optional Int
//Provide a fallback value, using the ?? operator.
//Stop program execution, using the ! operator.

//Optional binding can be used with if, guard, and while statements to check for a value inside an optional

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Basic Operators/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//asign operator
let (z, y) = (1, 2)   //tuple type
// z is equal to 1, and y is equal to 2

//unary minus operator
let three = 3
let minusThree = -three       // minusThree equals -3
let plusThree = -minusThree   // plusThree equals 3, or "minus minus three"

//unary plus operator  // The unary plus operator (+) simply returns the value it operates on, without any change:
let minusSix = -6
let alsoMinusSix = +minusSix  // alsoMinusSix equals -6

//compound assignment operators
var r = 1
r+=1


//Swift also provides two identity operators (=== and !==), which you use to test whether two object references both refer to the same object instance.

// tuple comarison
(1, "zebra") < (2, "apple")   // true because 1 is less than 2; "zebra" and "apple" aren't compared
(3, "apple") < (3, "bird")    // true because 3 is equal to 3, and "apple" is less than "bird"
(4, "dog") == (4, "dog")      // true because 4 is equal to 4, and "dog" is equal to "dog"

//ternary conditional operator
var salary = 50
var hasTax = true
let fullSalary = salary + ( hasTax ? 10 : 0)

//one-sided range      -------------------------------------------<

let array1 = [1,2,3,4,5,6,7]
for i in [2...]{
    print(array1[i])
}

for i in [...2]{
    print(array1[i])
}
for n in array1[..<2] {
    print(n)
}

let range = ...5
range.contains(7)   // false
range.contains(4)   // true
range.contains(-1)  // true
//print(range)

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////string and characters///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Swift’s String type is a value type

var str = "are you here"
var copy = str
copy += "?"
print (str)
print(copy)



