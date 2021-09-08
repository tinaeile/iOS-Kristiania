import UIKit

// Task 1

let firstClosure = {(x : Int) -> Int in x * 2}

firstClosure(5)

// Task 2

let secondClosure = {x in x * 2}
secondClosure(2)

// Task 3

let thirdClosure = {$0 * 2}
thirdClosure(8)

// Task 4

let fourthClosure: ((Int) -> Int)? = {x in x * 2}
fourthClosure!(2)

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

// Task 6
