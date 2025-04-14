//let myOptional: String?

//1. Force unwrapping

    //Optional!

//2. Check for nil value
    
    //if let optional != nil {
    //    optional!
    //}

//3. Optinoal Binding

    //myOptional = "Angela"
    //
    //if let safeOptional = myOptional {
    //    let text: String = safeOptional
    //    let text2: String = safeOptional
    //    print(text2)
    //} else {
    //    print("myOptional was found to be nil.")
    //}

//4. Nil Coalescing Operator

    //myOptional = nil
    //
    //let text: String = myOptional ?? "I am the default value"
    //
    //print(text)

//5. Optional Struct

struct MyOptional {
    var property = 123
    func method () {
        print("I am the struct's method.")
    }
}

let myOptional: MyOptional?

myOptional = MyOptional()

myOptional?.method()
