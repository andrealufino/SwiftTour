//
//  EnumStruct.swift
//  SwiftTour
//
//  Created by Andrea Mario Lufino on 15/07/14.
//  Copyright (c) 2014 Andrea Mario Lufino. All rights reserved.
//

import Foundation

/* Enum of type int. Only the first value is mandatory, the other is assigned in order */
/* Enum can be of type int, float and even strings */
enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.toRaw())
        }
    }
}

/* Enum of type String */
enum Suit {
    case Spades, Hearts, Diamonds, Clubs
    func simpleDescription() -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        }
    }
}

/* Create a structure. Structures supports many of the same behaviors as classes, including methods and initializers. One of the most important differences between structs and classes is that structures are always copied when they are passed around your code, but classes are passed by reference */
struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}

class EnumStructExamples {
    
    func logEnumStructExamples() {
        
        /* Create an enum of type Int */
        let ace = Rank.Ace
        let aceRawValue = ace.toRaw()
        println("[1]I'm an enum method\n\(aceRawValue)")
        
        /* Create an enum of type Strings */
        let hearts = Suit.Hearts
        let heartsDescription = hearts.simpleDescription()
        println("[2]I'm an enum of type Strings. \n\(heartsDescription)")
        
        /* Create a struct of cards */
        let threeOfSpades = Card(rank: .Three, suit: .Spades)
        let threeOfSpadesDescription = threeOfSpades.simpleDescription();
        println("[3]I'm a struct\n\(threeOfSpadesDescription)")
    }
}