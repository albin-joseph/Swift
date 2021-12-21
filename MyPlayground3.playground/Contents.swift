import Cocoa

var greeting = "Hello, playground"
print(greeting)

//Example for GCD main que

DispatchQueue.main.async {
    //We can do UI update here
}

DispatchQueue.global(qos: .background).async {
    //call api or some work in back ground
    DispatchQueue.main.async {
        //We can do UI update here
    }
}


//Example for Dispatch


let codes = ["abc","def","ghi","OPQ"]
let newCodes = codes.flatMap { $0.uppercased() }
print(newCodes)


let codes1 = [1, 2, 3, 4]
let newCodes1 = codes1.flatMap { $0 }
print(newCodes1)

//Implementation of Subscript
//Subscripts are used to access information from a collection, sequence and a list in Classes, Structures and Enumerations without using a method.
class SchoolClass{
    var students = ["Albin", "Anu"]
    
    subscript(_ index:Int) -> String{
        get{
          return students[index]
        }
        set(newValue){
            self.students[index] = newValue
        }
    }
}

var tenthStd = SchoolClass()
print(tenthStd[1])
tenthStd[1]="Emmanuel"
print(tenthStd.students)

struct MathTable{
    let multiplier:Int
    subscript(_ index: Int) -> Int{
        get{
            return multiplier*index
        }
    }
}

let fifthTable = MathTable(multiplier: 5)
print(fifthTable[5])
