import UIKit

/*
 Topics Covered
 1. Initalizers (init)
 2. Generic
 3. Guard Keyword
 4. optional binding and optional chaining
*/

/*
 Initalizers in Swift
 1. Struct -
    - struct khud se default init bana leta hai agar init define nahi hai to
    - hum user defined (custom) init bhi bana sakte hai
 
 2. Class -
    - class khud se default init nahi banata hai agar init define nahi hai to
      kyuki class me hum inheritance kar skate hai
      condition= agar parent class ke pass 5 properties hai aur child ke pass sirf 3 hai to default init kam nahi karega
    - hume user defined init jo ki default jaisa ho banana hi padtha hai
 
 
 3. failable init
    -  agar ek struct me hume kuch property ko nil rakhna hai tab hum sirf failable init hi use kar sakte hai
    - syntax = init? {}

 Two more type of initalizers are
 1. designated Init
 2. convenience Init
 Based on the use cases we can define multiple init for a single class
 
 Note - 1. Convenience initializers are allowed only in classes, not structs.
        2. In struct, you can use regular initializers or default values for properties to achieve similar behavior.
*/



struct employee{
    var name: String
    var department: String
    var age: Int
}

let employeeObj = employee(name: "Ramesh", department: "Fire Dept", age: 35)
print(employeeObj.department)


class mobile{
    var name: String
    var price: Int
    var quantity: Int
    var totalPrice: Int = 0
    
    init(name: String, price: Int, quantity: Int) {
        self.name = name
        self.price = price
        self.quantity = quantity
        self.totalPrice = (price * quantity)
    }
}

let mobileObj = mobile(name: "Samsung s24", price: 80000, quantity: 5)
print(mobileObj.name)


//---- Failable init-----------
struct person{
    var uidai: String
    
    init?(aadharno: String){
        if(aadharno.count<12){
            return nil;
        }
        self.uidai = aadharno
    }
}

let personobj = person(aadharno: "Hello")
print(personobj)

//------- Designated and Convenience init ----------
class teacher{
    var name: String
    var department: String
    var age: Int
    
    init(name: String, department: String, age: Int) {
        self.name = name
        self.department = department
        self.age = age
    }
    
    convenience init(teacherName: String) {
        self.init(name: teacherName, department: "Mechnical", age: 45   )
    }
}

let teacherObj = teacher(name: "Mahesh", department: "It Dept", age: 35)
print(teacherObj.department)

let teacherObj2 = teacher(teacherName: "Rushikesh")
print(teacherObj2.department)


/*
 Generic in Swift
 -  jab hume same functionality chaiyee in single(same) method
 -  strideable protocol use karte hai
 -  eg. agar hume integer me 3 aur double me bhi 3 add karna hai with single method
*/

func genericadd<R: Strideable> (number:R) -> R{
    return number.advanced(by: 3)
}

genericadd(number: 3)
genericadd(number: 3.5)

/*
 Guard Keyword in Swift
 - assert
   - forced execution ke liye sue kar sakte hai
 - if-else
 - guard
    - It is used for early exit if the condition is not met
    - matlab agar defined condition met nahi hui to jaldi se exit hota hai baki ka code execute nahi hoga
    -  Hum multiple conditions bhi likh sakte hai guard me using , ("comma")
*/

func displayName(name: String?){
    
//    assert(name != nil)
    
    
//    if(name != nil){
//        print("Name = \(name!)") //forced execution
//    }
//    else{
//        print("No value found")
//    }
    
    
    guard name != nil, isValid(name: name!) else {
        print("No value found in guard.")
        return
    }
    print("Name is displayed ...")
}

func isValid(name: String) -> Bool{
    return name.count == 4 ? true:false
}

displayName(name: "four")


/*
 Optional Binding and Chaining in Swift
 - it is the technique to check the nil
 -
*/

struct Parts{
    let name: String?
    let price: Double?
    // It can be null --
}

class ComputerParts{
    func findParts(name: String) -> Parts?{
        if(name == "keyboard"){
            return Parts(name: "Logitech keyboard", price: 1000.0)
        }else if(name == "mouse"){
            return Parts(name: "Artic fox", price: 700.0)
        }
        return Parts(name: String(), price: 0)
                    
    }
}

let objComputerParts = ComputerParts()

if let parts = objComputerParts.findParts(name: "graphic card"){
    if let partPrice = parts.price{
        debugPrint("partPrice \(partPrice)")
    }
}

if let PartsPrice = objComputerParts.findParts(name: "graphic")?.price{
    debugPrint("Ysess")
}else{
    print("item doesn't exists")
}


