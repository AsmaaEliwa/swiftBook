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
