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








