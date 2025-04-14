protocol CanFly {
    func fly()
}

extension CanFly {
    func fly() {
        print("The object takes off in the air.")
    }
}

class Bird {
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("The bird makes a new bird in a shell.")
        }
    }
}

class Eagle: Bird, CanFly {
    func fly() {
        print("The eagle flaps its wings and lifts off into the sky.")
    }
    
    func soar() {
        print("The eagle glides in the air using air currents.")
    }
}

class Penguin: Bird {
    func swim() {
        print("The penguin paddles through the water.")
    }
}

struct FlyingMuseum {
    func flyingDemo(flyingObject: CanFly) {// flyingDemo accepts a parameter flyingObject conforming to Canfly protocol.
        flyingObject.fly()
    }
}

struct Airplane: CanFly {/*A type conforming to a protocol can inherit the default implementations from the protocol's extension if it doesn't provide its own implementation.
Hence Airplane struct inherits the fly method from the protocol's extension.*/
    
}

let myEagle = Eagle()
let myPenguin = Penguin()
let myPlane = Airplane()
myPlane.fly()

let museum = FlyingMuseum()
museum.flyingDemo(flyingObject: myPlane)
