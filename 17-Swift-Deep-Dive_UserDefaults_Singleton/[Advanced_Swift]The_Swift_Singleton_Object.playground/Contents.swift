import UIKit

//Example 1

//only one copy of Singleton can be shared across all of the classes and objects.
//class Car {
//    var colour = "Red"
//}
//
//let myCar = Car()
//myCar.colour = "Blue"
////print(myCar.colour)
//
//let yourCar = Car()
//print(yourCar.colour)



//Example 2

class Car {
    var colour = "Red"

    static let singletonCar = Car() //Singleton
}

let myCar = Car.singletonCar
myCar.colour = "Blue"

let youCar = Car.singletonCar
print(youCar.colour)

class A {
    init() {
        Car.singletonCar.colour = "Brown"
    }
}

class B {
    init() {
        print(Car.singletonCar.colour)
    }
}

let a = A()
let b = B()
