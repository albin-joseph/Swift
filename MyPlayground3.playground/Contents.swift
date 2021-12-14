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
