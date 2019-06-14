import UIKit

// swift requires equal amount of space around symbols like + - =
//The code below is therefore wrong
//var a= 3
//this is the corrected code
var a1 = 3

//*******************************Functions******************************
// structure for a function is
func func_name(){
    // content of the function comes here
}

//functions can also take parameter
// the type of the paramenter should be mentioned with the function declarationm
func sample(parameter1:Int){
    // content of the function comes here
    print(parameter1)
}
//sample function call would be like
sample(parameter1: 10)

//functions can also return values
func sample2(parameter1:Int)->Int{
    return parameter1+2
}
print(sample2(parameter1: 10))

//******************************LOOPS*************************************
// There are mainly 2 ways to declare loops
var numbers = [1,2,3,4,5]
//method 1
// iterating through an already existing array
for number in numbers{
    print(number)
}
//method 2
// iterating by specify the number of times the loop should run
for number in 1...5{
    print(number)
}
// FORMAT
/*
 for condition where condition{
    //the code to be executed
 }
*/
