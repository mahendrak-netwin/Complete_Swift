import UIKit

/*
 Topics Covered
 1. closure
 2. Dictionary
 3. Extension
 4. sets
*/

/*
 Closure
 What - jaise function  ko variable me daal sakte hai vaise hi kuch hai
 When to use - API parsing
*/


var addition:(Int,Int) -> (Int) = {
    (number1, number2) in
    
    return number1 + number2
}

let result = addition(30,30)

var subtraction:(Int, Int) -> (Int) = {
    return $0 - $1
}

let sub_result = subtraction(100,20)


/*
 Dictionaries in Swift
 what -  {key:value} pair, It is value type (alag - alag khudki separate copies)
 Why - for faster retrieval,
 When - api calls (json format) =  key value pair
 
 var myDictionary:[String: Any] -> Here Any refers either Int, String, Boolean, Or Array
 */

var myDictionary:[String:String] = ["Samsung":"s24", "iPhone":"pro", "Oneplus":"nord"]

if myDictionary["Redmi"] != nil {
    print(myDictionary["Redmi"]!)
}else{
    print("no such record found...")
}

print(myDictionary["Samsung"])
print(myDictionary["iPhone"]!) //forced execution

var myDictionary_2 = myDictionary

myDictionary_2["iPhone"]="XR"

print("Printing phone value from myDictionary = \(myDictionary["iPhone"])")
print("Printing phone value from myDictionary_2 = \(myDictionary_2["iPhone"])")


/*
 Extensions in  Swift
 what - to add new (additional) functionality to class or data type
 When - eg.  if i want to convert celcius to farenheit and viceversa multiple times then i can use it
 why - to reduce the code lines
*/

extension Double{
    func CelciustoFarenheit() -> Double{
        return((self*1.8000)+32).rounded()
    }
    
    func FarenheittoCelcius() -> Double{
        return ((self-32)/1.800).rounded()
    }
}

var celciusTemperature: Double = 23
var farenheitTemperature: Double = 74

print("Celcius to Farenheit: \(celciusTemperature.CelciustoFarenheit())")
print("Farenheit to Celcius: \(farenheitTemperature.FarenheittoCelcius())")


/*
 Sets in Swift
 1. used to save the collection with unique elements
 2. set is unordered list - matlab jo order me elements daale hai vo order me nahi rahenge
 3. array is the ordered list - jo order me elemnt enter kiye hai vahi order me rahenge
 4. set can contain string, int and custom object also but for custom object hume use Hashable banana hoga
 5. Set inbuilt functions - .intersection, .symmetricDifference
*/


var colorSet: Set<String> = ["Red","Cyan", "Blue", "Green","Blue"]

var colorsArray: [String] = ["Red","Cyan", "Blue", "Green","Blue"]

print(colorSet) //unordered and unique elements
print(colorsArray) //ordered and repeatable elements


var teaSet: Set<String> = ["Milk", "Sugar", "Tea powder", "Clove", "Water"]
var coffeeSet : Set<String> = ["Milk", "Sugar","Coffee powder"]

print("Common items to make Tea and Coffee: \(teaSet.intersection(coffeeSet))")
print("Different items in making Tea and Coffee: \(teaSet.symmetricDifference(coffeeSet))")




