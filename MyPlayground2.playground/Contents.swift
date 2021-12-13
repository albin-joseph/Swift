import Cocoa

var greeting = "Hello, playground"

func twoNumberSumUsingHashTable(array: [Int],targetSum: Int) -> [[Int]] {
    var numberHashMap = [Int: Bool]()
    var resultArray = [[Int]]()
    for number in array {
        let potentialMatch = targetSum - number
        if let exists = numberHashMap[potentialMatch] , exists {
            let result = [potentialMatch, number]
            resultArray.append(result)
        }
        else {
            numberHashMap[number] = true
        }
        print(numberHashMap, number)
    }
    return resultArray
}

//print(twoNumberSumUsingHashTable(array: [1,3,4,6,4,3,2,6,7,8,9], targetSum: 10))

let a = [12, 1, 2, 5, 7, 9, 10]
let b = 19
print(a)
print(twoNumberSumUsingHashTable(array: a, targetSum: b))
