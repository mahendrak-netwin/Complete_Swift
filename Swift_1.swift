import UIKit

//Topics Covered
/*
 1. variables and data types
 2. function
 3. struct
 4. class
 5. optional and required
*/


//Basics Of the Swift
/*
 1. variables in swift var, let
 2. let - it is treated as constant in swift
 3. var can be reassigned
*/

//4. Ways to declare the variables
//1. without datatype

var name = "Mahendra"
let rollno = 45

print("Name is ",name)
print("Roll no is \(rollno)")

//2. with datatype

var department: String = "IT Dept"
let department_no: Int = 101

print("Department is \(department) and department_no is \(department_no)")

/*
 Function in Swift
 1.Single Return value
   defined as func getname(parameters) -> return_type{}
 2.Multiple Return Value
   defined as func getuser(parameters) -> (variable: return_type,  variable: return_type){}
*/

func add_sub(num1:Int, num2:Int) -> (addition:Int, subtraction:Int){
    var addition = num1 + num2
    var subtraction = num1 - num2
    return(addition,subtraction)
}

add_sub(num1: 50, num2: 30)




/*
 Difference Between Struct and Class
 1. Struct is a value type
    - iska matlab simple hai ki agar ek hi struct ke hum do(2) object banate hai
      aur agar kisi ek ki value change karte hai to dusre ki value ko koi affect nahi hota
    - impact sirf ek hi jagha hota hai
    - alag - alag memory ko point karte hai
 
 
 2. Class is a reference type
    - iska matlab simple hai ki agar ek hi class ke hum do(2) object banate hai
      aur agar kisi ek ki value change karte hai to dusre ki value bhi affect hoti hai
    - impact har(sab) jagha hota hai
    - same memory ko point karte hai
*/


struct car{
    var name:String
    var year:Int
    
    func print_car_info() -> String{
        return "Car Name: \(name) and launch year: \(year)"
    }
    
}

let car_details_1 = car(name: "Ford", year: 2018)

print("Struct Car_1")
car_details_1.print_car_info()

var car_details_2 = car_details_1

print("Struct Car_2")
car_details_2.print_car_info()

car_details_2.name="Fortuner"

print("Struct Car_1 and Car_2 after updating Car_2")
car_details_1.print_car_info()
car_details_2.print_car_info()

// ----- For Class ------

class user{
    
    var name: String = "Ram Rathi"
    var age: Int = 22
    
}

let user_details_1 = user()

print("Class User_1")
print("User Name: \(user_details_1.name) and age is \(user_details_1.age)")

var user_details_2 = user_details_1

print("Class User_2")
print("User Name: \(user_details_2.name) and age is \(user_details_2.age)")

user_details_2.name="MAHENDRA BAHUBALI"

print("Class User_1 and User_2 after updating User_2")
print("User Name: \(user_details_1.name) and age is \(user_details_1.age)")
print("User Name: \(user_details_2.name) and age is \(user_details_2.age)")


/*
 Required and Optionals in Swift
 
 1. by default each variable is required in swift
 2. to make a variable optional we use "?"
 3. optional may have the value = nil
 4. forced "!" is applied to get the value of optional variable if it is not nil
    note - agar forced execution karne wale variable me nil hai to error aayenga
*/

class student{
    var firstName: String = String()
    var middleName: String?
    var lastName: String = String()
    
    func student_info() -> (){
        if(middleName != nil){
            print("\(firstName) \(middleName!) \(lastName)")  //forced execution
        }
        else{
            print("\(firstName) \(lastName)")
        }
    }
}

let s1 = student()
s1.firstName = "Mahendra"
s1.lastName = "Karwa"

s1.student_info()





