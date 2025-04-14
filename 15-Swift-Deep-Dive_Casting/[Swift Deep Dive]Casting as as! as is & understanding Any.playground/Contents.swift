import  Foundation

class Animal {
    var name: String
    
    init(n: String) {
        name = n
    }
}

class Human: Animal {
    func code() {
     print("Typing away...")
    }
}

struct Fish {
    func breatheUnderWater() {
     print("Breathing under water.")
    }
}

let angela = Human(n: "Angela Yu")
let jack = Human(n: "Jack Bauer")
let nemo = Fish()

let neighbours: [AnyObject] = [angela, jack, nemo] //Any excepts any type in the array struct as well, AnyObject allows only class, and NSObject is much more limited and allows only NSobject type like primities type.
print(neighbours)

//func findNemo(from animals: [Animal]) {
//    for animal in animals {
//        if animal is Fish {
//            print(animal.name)
//            let fish = animal as! Fish
//            fish.breatheUnderWater()
//        }
//    }
//}
//
//findNemo(from: neighbours)
