//: Playground - noun: a place where people can play

import UIKit

enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}

let ace = Rank.ace
let aceRawValue = ace.rawValue
Rank.two.simpleDescription()
Rank.two.rawValue

func compare(lhs: Rank, rhs: Rank) -> Int {
    return lhs.rawValue - rhs.rawValue
}
compare(lhs: .ace, rhs: .eight)

// init?(rawValue:)
if let convertedRank = Rank(rawValue: 11) {
    let threeDescription = convertedRank.simpleDescription()
}

enum Suit: Int {
    case spades, hearts, diamonds, clubs
    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
    func color() -> String {
        switch self {
        case .spades, .clubs:
            return "black"
        case .hearts, .diamonds:
            return "red"
        }
    }
}

let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()
hearts.color()

// “to have values associated with the case”
enum ServerResponse {
    case result(String, String)
    case failure(String)
    func abc() {
        
    }
}

let s = ServerResponse.result("6:00 am", "8:09 pm")
let f = ServerResponse.failure("Out of cheese.")

switch s {
case let .result(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
case let .failure(message):
    print("Failure... \(message)")
}

switch f {
case let .result(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
case let .failure(message):
    print("Failure... \(message)")
}

// Structure
struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
    func fullDeck() {
        for rank in 1...13 {
            for suit in 0...3 {
                let r = Rank.init(rawValue: rank)
                let s = Suit.init(rawValue: suit)
                print("\(r?.simpleDescription()) \(s?.simpleDescription())")
            }
        }
    }
}
let threeOfShapes = Card(rank: .three, suit: .spades)
let threeOfSpadesDescription = threeOfShapes.simpleDescription()
threeOfShapes.fullDeck()
