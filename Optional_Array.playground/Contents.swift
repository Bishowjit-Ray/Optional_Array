import UIKit

var optionalNumber: Int?
optionalNumber = 24
print(optionalNumber!)

// unwrapping by using if let

if let number = optionalNumber{
    print("I have a valu and it is \(number)")
    
    }
     else
{
 print("I have no any value")
}

// unwrapping by using guard let

var newOptionalNumber: Int?
newOptionalNumber = 43

func doubleNumber(Number:Int?){
    guard let number = Number else {
        print("Exit Function")
        return
        
    }
    print("The double number is \(number*2)")
}
doubleNumber(Number: newOptionalNumber)

// Force unwrapping

let forseValue = newOptionalNumber!
print(forseValue)

// unwrapping by using Struct

struct Device{
    var type: String
    var price: Float
    var color: String
    
}
var myPhone:Device?
myPhone = Device(type: "iPhone", price: 645.4, color: "Red")
let devicePrice = myPhone?.price
if let PriceVal = devicePrice{
    print("Total price is \(PriceVal*4)")
}


// About Array

var ShopList: [String] = ["milk","red meet","Apple"]
print(ShopList)

if ShopList.isEmpty {
    print("Yes Empty")
}
else{
    print("no, Not empty")
}

ShopList.append("Fruit")

ShopList += ["Rice","1000"] //Add two element
ShopList.insert("green apple", at: 0)// insert into  specific index

ShopList.remove(at: 0) // for removing element from Array
ShopList.removeLast()

print(ShopList)

// useing For loop

for item in ShopList{
    print(item)
}
print()

for (index, value) in ShopList.enumerated(){
    print("item \(index + 1 ): \(value)")
}
