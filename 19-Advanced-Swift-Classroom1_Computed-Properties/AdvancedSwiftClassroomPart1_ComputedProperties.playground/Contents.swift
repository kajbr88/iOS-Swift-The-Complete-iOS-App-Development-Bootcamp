import UIKit

//Getters & Setters

//let pizzaInInches: Int = 12
//
////var numberOfSlices: Int {//this is a getter and getter is the code here that will run in order to get us the value of this property.
////    return pizzaInInches - 4
////}
//
//var numberOfSlices: Int {
//    get {
//        return pizzaInInches - 4
//    }
//    set{//having setter block allows us to tap into the exact moment when our property is set with a new value & it allows us to use the newValue in computations or various bits of code and execute at the exact time when this propert's value gets updated.
//    print("numberOfSlices now has a new value which is \(newValue)")
//    }
//}
//
//numberOfSlices = 12




//Computed Properties

//var pizzaInInches: Int = 10 {
//    willSet {
//        print(pizzaInInches)//prints old value
//        print(newValue)
//    }
//    didSet {
//        print(pizzaInInches)//prints new value
//        print(oldValue)
//    }
//}
//
//pizzaInInches = 8
//
//var numberOfPeople: Int = 6
//let slicesPerPerson: Int = 5
//
//var numberOfSlices: Int {
//    get {
//        return pizzaInInches - 4
//    }
//}
//
//var numberOfPizza: Int {
//    get {
//        let numberOfPeopleFedPerPizza = numberOfSlices / slicesPerPerson
//        return numberOfPeople / numberOfPeopleFedPerPizza
//    }
//    set {
//        let totalSlices = numberOfSlices * newValue
//        numberOfPeople = totalSlices / slicesPerPerson
//    }
//}
//
//numberOfPizza = 3
//
//print(numberOfPeople)





//Advanced Properties Challenge

var width: Float = 3.4
var height: Float = 2.1

var bucketOfPaint: Int {
    get {
        let area = width * height
        let areaCoveredPerBucket: Float = 1.5
        let numberOfBuckets = area / areaCoveredPerBucket
        let roundedBuckets = ceilf(numberOfBuckets)
        return Int(roundedBuckets)
    }
    set {
        let areaCanCover = Double(newValue) * 1.5
        print("This amount of piont can cover an area of \(areaCanCover)")
    }
}


//print(bucketOfPaint)
bucketOfPaint = 5



