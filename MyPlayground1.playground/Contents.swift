import Cocoa
import Fou

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

class sammpleClass{
    let sampleVariable = "Sample String"
}

if(2_000 == 2000){
    
}

DispatchQueue.global().async {
    <#code#>
}

DispatchQueue.global(qos: .background).async {
    <#code#>
}

DispatchQueue(label: "com.dispatch.serial", qos: .background, attributes: .concurrent).async {
    <#code#>
}

//Dospactch grops groups dispatches together

let group = DispatchGroup()

let items:[TimeInterval] = [
    1,
    3,
    7,
    5,
    3,
    2,
    6
]

for el in items{
    group.enter()
    DispatchQueue.global().asyncAfter(deadline: now()+el) {
        print("enter")
        group.leave()
    }
}

group.notify(queue: .main) {
    print("notify")
}
