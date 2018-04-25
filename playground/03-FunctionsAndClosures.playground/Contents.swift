import UIKit

// Function
func greet(person: String, day: String, lunchSpecial: String) -> String {
    return "Hello \(person), today is \(day) and today's lunch special is a \(lunchSpecial)."
}
greet(person: "Peter", day: "Sunday", lunchSpecial: "Hamberger")

// Function - omit parameter or custom argument label
func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet("Hwang", on: "Wed")

// Function - tuple
func calculateStatstics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    
    return (min, max, sum)
}
let statistics = calculateStatstics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
print(statistics.2)

// Function - nested
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()

// Function - is a first-class type, func can return another func
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}
let numbers = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)

numbers.map({ (number: Int) -> Int in
    let result = 3 * number
    print(result)
    return result
})

numbers.map({ (number: Int) -> String in
    let result = "result is = \(number * 3)"
    print(result)
    return result
})

// Function - writing closures more concisely
let mappedNumbers = numbers.map({ number in 3 * number })
print(mappedNumbers)

// Function - When a closure is the only argument to a function, you can omit the parentheses entirely.
let sortedNumbers = numbers.sorted() { $0 < $1 }
print(sortedNumbers)
