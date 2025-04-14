import Foundation

let hero = StructHero(name: "Iron Man", universe: "Marvel")

//var anotherMarvelHero = hero
//anotherMarvelHero.name = "The Hulk"
//
//var avengers = [hero, anotherMarvelHero]
//
//avengers[0].name = "Thor"
//
//print("hero name = \(hero.name)")
//print("anotherMarvelHero name = \(anotherMarvelHero.name)")
//print("first avenger name = \(avengers[0].name)")


//Note: When Struct are declared as let they become truly immutable then we cant change any part off the struct neither the properties or the methods.
//hero.name = "Cat Women"//is mutable with hero being a Class but notbeing a Struct as Struct are truly immutable.

//hero = StructHero()//cant assign a new instance to hero as it is const(let) neither for hero being a Class or a Struct.


print(hero.reverseName())

