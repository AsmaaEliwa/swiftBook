import UIKit
/////////////////////////////accessing and modifing a string///////////////////////////////////////////////////
//If a String is empty, startIndex and endIndex are equal.

var myStr = "hello there!"
var firstL = myStr[myStr.startIndex]
var index = myStr.index(before: myStr.endIndex)
var lastL = myStr[index]
let index5 = myStr.index(myStr.startIndex , offsetBy: 5)
let le5 = myStr[index5]    // " "
let secIndx = myStr.index(after: myStr.startIndex)
let secEle = myStr[secIndx]
myStr.remove(at: myStr.index(before: myStr.endIndex))    //if you want to remove the last element in the str
myStr    //hello there"
for index in myStr.indices{
    print("the letter is \(myStr[index])")
}


for (i,char) in myStr.enumerated() {
    print(i,char)
}

let greeting = "Hello, world!"
let index1 = greeting.firstIndex(of: ",") ?? greeting.endIndex
let beginning = greeting[..<index1]
// beginning is "Hello"


// Convert the result to a String for long-term storage.
let newString = String(beginning)


//hasPrefix("Act 1 ") //will check if any starts with this    // hasSuffix will check if it ends with it
var array = ["Act 1 and i love it" , "hello Act 1", " im also an Act 1", "no im not one"]
var count = 0
var suffCount = 0
for i in array {
    if i.hasPrefix("Act 1 "){
        count+=1
    }
}
count    // 1 so it has to start with it
for i in array {
    if i.hasSuffix("Act 1"){
        suffCount+=1
    }
}
suffCount


/////////////////////////////collection type///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
var threeDoubles = Array(repeating: 0.0, count: 3) // threeDoubles is of type [Double], and equals [0.0, 0.0, 0.0]
array[2...3]
array.insert("String", at: 0)
array.remove(at: array.count-1)


//////////////////////////////////set//////////////////////////////
var mySet = Set<Int>()
var favoriteGenres: Set = ["Rock", "Classical", "Hip hop"]
var odd: Set = [1,3,5,7,9]
var even: Set = [2,4,6,8]
var prim: Set =  [2,3,5,7]

odd.union(even).sorted()
odd.intersection(even)
odd.subtracting(prim)
odd.symmetricDifference(prim)


////////////////////dictionary /////////////////////
var namesOfIntegers: [Int: String] = [:]
var airports: [String:String] = [:]
for airportCode in airports.keys {
    print("Airport code: \(airportCode)")
}
// Airport code: LHR
// Airport code: YYZ


for airportName in airports.values {
    print("Airport name: \(airportName)")
}
// Airport name: London Heathrow
// Airport name: Toronto Pearson
