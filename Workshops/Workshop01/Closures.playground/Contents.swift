import UIKit

// Task 1

let firstClosure = {(x : Int) -> Int in x * 2}

firstClosure(5)

// Task 2

let secondClosure = {x in x * 2}
secondClosure(2)

let closure2: (Int) -> Int = {
    number in number * 2
}

// Task 3

let thirdClosure = {$0 * 2}
thirdClosure(8)

let closure3: (Int) -> Int = {
    $0 * 2
}
closure3(8)

// Task 4

let fourthClosure: ((Int) -> Int)? = {x in x * 2}
fourthClosure!(2) // Dont do thiiiiis
fourthClosure?(2)

let closure4: ((Int)->Int)? = {
    $0 * 2
}
closure4?(2)

// Task 5

func isDivisible(a:Int, b:Int, fifthClosure: (Bool)-> ()){
    fifthClosure(a % b == 0)
}

isDivisible(a: 14, b: 7, fifthClosure: { (isDivisible: Bool) -> Void in
    if isDivisible {
        print("Task 5: They're totally divisible!")
    } else {
        print("Bummer...")
    }
})

// Task 6 & 7

isDivisible(a: 14, b: 7) {
    if $0 {
        print("Task 6 & 7: They're totally divisible!")
    } else {
        print("Bummer...")
    }
}

// Task 8

struct Person {
    let name: String?
}

let people = [Person(name: "Edd"), Person(name: "Ed"), Person(name: "Eddy"), Person(name: nil)]

let nameLengthArray = people.map { person in person.name?.count ?? 0 }
print(nameLengthArray)

// Task 9

for person in people {
    print(person.name ?? "")
}

people.forEach { person in print(person.name ?? "") }

people
    .map { $0.name?.count ?? 0 }
    .forEach { print($0) }

// Task 10

people
    .compactMap { $0.name }
    .forEach { print($0) }
