import Cocoa

//Difference between Variable, Constants and static

var x = 10
print(x)
x = 12
print(x)

let y = 12
// canot change const once a value assigned. Not possible y = 14

class Person {
    var name:String = "Albin"
    static var specious:String = "Homo Sapience"
}
print(Person.specious)
var p = Person()
p.name = "Albin Joseph"
Person.specious = "Avacado"

print(p.name)
print(Person.specious)

//If we declare a variable with Static keyword, only one copy of variable available for all objects and we can acces the varible without an instance
