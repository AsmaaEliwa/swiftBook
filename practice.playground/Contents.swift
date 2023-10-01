import UIKit

//Swift Basics:
//
//Write a program to calculate the factorial of a given number using a recursive function.

func factorial(_ num: Int)->Int{
    if num == 1 {
        return 1
        
    }
    
        return num * factorial( num-1)
}
print(factorial(4))




//
//Create a function that reverses a given string without using the reversed() method.
func reverse(str:String)->String{
    var i = str.count-1
    var newStr = ""
    while i >= 0 {
        var index = str.index(str.startIndex, offsetBy: i)
        newStr.append(str[index])
        i-=1
    }
    return newStr
}
print(reverse(str: "asmaa"))





//
//Implement a function to check if a string is a palindrome (reads the same forwards and backwards).

func ispalindrome(_ str: String)->Bool{
    return str == reverse(str: str)
}
ispalindrome("aca")







//Arrays and Collections:
//
//Find the sum of all even numbers in an array of integers.

func evenSum(arr: [Int])->Int{
    var sum = 0
    for i in arr {
        if i % 2 == 0{
            sum+=i
        }
    }
    return sum
}
evenSum(arr: [1,2,3,4,5])



//
//Write a function to remove duplicates from an array while preserving the order of elements.
func noduplicates(arr: [Int])->[Int]{
    var newArr = [Int]()
    for i  in arr{
        if !newArr.contains(i){
            newArr.append(i)
        }
    }
    return newArr
}
noduplicates(arr: [1,2,3,1,2,3,4,5])







//
//Implement a function to rotate the elements of an array to the left by a specified number of positions.
func rotate(arr: [Int] , k:Int)->Any{
    return arr[k...] + arr[..<k]
}

print(rotate(arr: [1,2,3,4,5,6,7], k:3))




//Classes and Objects:
//
//Create a class representing a simple bank account. Include methods to deposit and withdraw funds and check the account balance.
//
class Acount{
    var username: String
    var balnce: Int
    init( username: String,balnce:Int){
        self.username = username
        self.balnce = balnce
    }
    func deposit(_ amount:Int){
        self.balnce+=amount
        print("your balance now is \(balnce)")
    }
}
var myAcount = Acount(username: "asmaa Eliwa", balnce: 10000)
myAcount.balnce
myAcount.deposit(500)



//Define a Person class with properties for name and age. Create an array of Person objects and sort them by age.
//

class Person{
    var name:String
    var age:Int
    init(name:String,age:Int){
        self.name = name
        self.age = age
    }
    
}
var p1 = Person(name: "asmaa", age: 27)
var p2 = Person(name: "saif", age: 30)
var p3 = Person(name: "asif", age: 33)
var p4 = Person(name: "adam", age: 3)

var arrayOfPerson = [p1,p2,p3,p4]
var sortedArray: [Person] = arrayOfPerson.sorted { P1, P2 in
    P1.age < P2.age
}
print(sortedArray[0].age)  //adam





//Optionals and Error Handling:
//
//Write a function that converts a string to an integer and handles possible conversion errors using optional binding.
 
func convertStrToInt(str:String)->Any{
    if let int = Int(str) {
        return int
    }else{
        return "String cant be an intger"
    }
    
}

convertStrToInt(str: "333")




//
//Implement a custom error type and throw it in a function that performs a specific operation (e.g., dividing by zero).
//
enum error :Error {
    case wrongEmail
    case wrongPassword
}
func logIn(password:String , email:String)throws{
    if email != "asmaa@gmail.com"{
        throw error.wrongEmail
    }
    if password != "12345678"{
        throw error.wrongPassword
    }
}
do {
    var result = try logIn(password: "12345678", email: "asmaa")
}
catch error.wrongEmail{
    print("Wrong Email")
}
catch error.wrongPassword{
    print("Wrong password")
}

