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
