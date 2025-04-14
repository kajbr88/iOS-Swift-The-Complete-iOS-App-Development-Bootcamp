import Foundation

struct StructHero {
    var name: String
    var universe: String
    
   mutating func reverseName() {
        self.name = String(self.name.reversed())
    }
    
}

//let hero = StructHero(name: "Iron Man", universe: "Marvel")
