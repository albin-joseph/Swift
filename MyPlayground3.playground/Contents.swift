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

/**structs (incl. arrays and dictionaries)
enumerations
basic data types (boolean, integer, float, etc.)**/
let array1 = [1, 2, 3, 4, 5]
var array2 = array1
array2.append(6)
print("\(array1.count) not equal \(array2.count) ; beacuse both are different copy, array is value type")

//Associated types are a powerful way of making protocols generic, Exaple shows below

protocol ItemStoring {
    associatedtype DataType

    var items: [DataType] { get set}
    mutating func add(item: DataType)
}

extension ItemStoring {
    mutating func add(item: DataType) {
        items.append(item)
    }
}

struct NameDatabase: ItemStoring {
    var items = [String]()
}

var names = NameDatabase()
names.add(item: "James")
names.add(item: "Jess")

struct IntDatabase: ItemStoring {
    var items = [Int]()
}

var arrayInt = IntDatabase()

arrayInt.add(item: 1)
