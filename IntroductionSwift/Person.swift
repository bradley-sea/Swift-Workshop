//
//  Person.swift
//  IntroductionSwift
//
//  Created by Bradley Johnson on 6/27/14.
//  Copyright (c) 2014 Bradley Johnson. All rights reserved.
//

import Foundation

class Person {
    
    //slide 24 optionals
    var name = String()
    //var name = "Brad"
    var age : Int?
    
    var favoriteSpot : Place
    var location : Location
    
    init(){
        //self.name = "brad"
        
        //enum slides continued - ADD A property
      self.favoriteSpot = Place.Fremont
        
        switch favoriteSpot { //either need all cases or a default case, must always appear last
        case .Fremont:
            println("fremont!")
        case .SLU:
            println("SLU!")
        case .CapitolHill:
            println("cap hill!")
        case .BellTown:
            println("belltown")
        }
        
        //associated values enums
        self.location = Location.StateAndZip("WA", 98109)
        
        switch self.location { // do type check cases first, then specific values
//        case .StateAndZip(let state, let zip):
//                println("\(state) and \(zip)")
//        case .State(let state):
//            println("\(state)")
        case .StateAndZip("WA", 98109):
            println("state and zip")
        case .State("WA"):
            println("state")
        default:
            println("where do you live bro?")
        }
        
    }
    
    
    //method
    func doMath() {
        someFunction(0, 0, 0)
        self.doSomethingWithName("Brad", age: 25, andZip: 98109)
    }
    //slide 21 methods - show external parameters
    func doSomethingWithName( name: String, age : Int, andZip zip : Int) {
        
    }
    
}

//enum slides
enum Place { //can also put all those cases on one line
    case Fremont
    case SLU
    case BellTown
    case CapitolHill
}

//enum slides - associated values
enum Location  { //can also put all those cases on one line
 
    case State(String)
    case StateAndZip(String,Int)
}





//slide 19 functions

func someFunction(a : Int, b : Int, c :Int) {

}
//slide 20 function with tuple
func fetchZipCodeAndState() -> (String, String) {
    return ("98109","WA")
}