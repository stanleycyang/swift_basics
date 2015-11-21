import UIKit

// let to make a constant
let myConstant = 13

// var to make a variable
var myInt = 42
myInt = 50 // Override the variable

// Explicit
let explicitDouble: Double = 70.0

print("\(explicitDouble)")


// Converting the value to a different type
let label = "The width is "
let width = 94
let widthLabel = label + String(width) // Int converted to String

print("\(widthLabel)")

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples"
let fruitSummary = "I have \(apples + oranges) pieces of fruit"

print(fruitSummary)

let optionalInt: Int? = 9
print(optionalInt)

let actualInt: Int = optionalInt!
print(actualInt) // Force unwrap operator (!). Only use when the value isn't nil

var myString = "7"
var possibleInt = Int(myString) // Optionals are pervasive in Swift. They are useful for attempted type conversions
print(possibleInt)

myString = "banana"
print(myString)
possibleInt = Int(myString) // When converting myString to something that can't be converted to an integer, possibleInt becomes nil
print(possibleInt)

var ratingList = ["Poor", "Fine", "Good", "Excellent"]
ratingList[1] = "OK"
print(ratingList)

// Create an empty array
let emptyArray = [String]() // Use the initializer syntax with ()
print(emptyArray)

// Implicitly unwrapped optional types are indicated with an exclamation mark
var implicitlyUnwrappedOptionalInt: Int!

let number: Int = 23
if number < 10 {
    print("The number is small")
} else if number > 100 {
    print("The number is pretty big")
} else {
    print("The number is between 10 and 100")
}

var individualScores = [75, 42, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

print(teamScore)

var optionalName: String? = "Stanley Yang"
var greeting = "Hello"
if let name = optionalName {
    greeting = "Hello \(name)"
}

print(greeting)

let vegetable = "red pepper"
var vegetableComment: String = ""

switch vegetable {
case "celery":
    vegetableComment = "Add some raisins and make ants on a log"
case "cucumber", "watercress":
    vegetableComment = "That would make a good tea sandwich"
case let x where x.hasSuffix("pepper"):
    vegetableComment = "Is it a spicy \(x)?"
default:
    vegetableComment = "Everything tastes good in soup"
}

print(vegetableComment)

var firstForLoop = 0
for i in 0..<4 {
    firstForLoop += 1
}

print(firstForLoop)


var secondForLoop = 0
for _ in 0...5 { // Wildcards can be used when you don't need to know which iteration of the loop is currently executing
    secondForLoop += 1
}

print(secondForLoop)

func greet(name: String, day: String, time: String) -> String {
    return "Hello \(name), today is \(day) \(time)"
}

print(greet("Stanley", day: "Tuesday", time: "12:00PM")) // Pass in the first argument without writing its name, and every subsequent value with its name

let exampleString: String = "hello"
if exampleString.hasSuffix("lo") {
    print("ends in lo")
}

if exampleString.hasPrefix("he") {
    print("started in he")
}

var array = ["apple", "banana", "dragonfruit"]
array.insert("cherry", atIndex: 2)
print(array)

class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

let shape = Shape()
shape.numberOfSides = 7
print(shape.simpleDescription())

class NamedShape {
    var numberOfSides = 0
    var name: String
    init(name: String) {
        self.name = name
    }
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides called \(self.name)"
    }
}

let triangle = NamedShape(name: "Triangle")
print(triangle.simpleDescription())

class Square: NamedShape {
    var sideLength: Double
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)"
    }
}

let testSquare = Square(sideLength: 10, name: "Square")
print(testSquare.area())
print(testSquare.simpleDescription())

class Circle: NamedShape {
    var radius: Double
    
    init?(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
        numberOfSides = 1
        if radius <= 0 {
            return nil // A failable initializer can return nil after initialization. Use init? to declare failable initializer
        }
    }
    
    override func simpleDescription() -> String {
        return "A \(name) with a radius of \(radius)"
    }
}

let successfulCircle = Circle(radius: 4.2, name: "Successful circle")
print(successfulCircle?.simpleDescription())

let failedCircle = Circle(radius: -7.5, name: "failed circle")
print(failedCircle?.simpleDescription())

class Triangle: NamedShape {
    init(sideLength: Double, name: String) {
        super.init(name: name)
        numberOfSides = 3
    }
}

let shapesArray = [Triangle(sideLength: 1.5, name: "triangle1"), Triangle(sideLength: 4.2, name: "triangle2"), Square(sideLength: 3.2, name: "square1"), Square(sideLength: 2.7, name: "square2")]

var squares = 0
var triangles = 0

for shape in shapesArray {
    if let square = shape as? Square {
        squares++
    } else if let triangle = shape as? Triangle {
        triangles++
    }
}

print("\(squares) squares and \(triangles) triangles.")

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
            return String(self.rawValue)
        }
    }
}

let ace = Rank.Ace
let aceRawValue = ace.rawValue
print(ace)
print(aceRawValue)

if let convertedRank = Rank(rawValue: 3) {
    let threeDescription = convertedRank.simpleDescription()
    print(threeDescription)
}

enum Suit {
    case Spades, Hearts, Diamonds, Clubs
    func simpleDescription() -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "penis"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        }
    }
}

let hearts = Suit.Hearts
print(hearts)
let heartsDescription = hearts.simpleDescription()
print(heartsDescription)


struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}

let threeOfSpaces = Card(rank: .Three, suit: .Spades)
print (threeOfSpaces.simpleDescription())

protocol ExampleProtocol {
    var simpleDescription: String { get }
    func adjust()
}

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += " Now 100% adjusted."
    }
}

var a = SimpleClass()
a.adjust()
print(a.simpleDescription)

class SimpleClass2: ExampleProtocol {
    var simpleDescription: String = "Another very simple class."
    func adjust() {
        simpleDescription += " Adjusted"
    }
}

var protocolArray: [ExampleProtocol] = [SimpleClass(), SimpleClass(), SimpleClass2()]
for instance in protocolArray {
    instance.adjust()
    print(instance.simpleDescription)
}

let sampleString: String = "hello"
let sampleArray: Array = [1,2,3.14,23,42]


let redSquare = UIView(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
redSquare.backgroundColor = UIColor.redColor()