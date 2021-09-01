import UIKit

/*:

 # Exercises for Lecture #1


 #### Task #1

  Define a constant with "Swift is cool!".
- Try to set the value to something else.
- Why did you get an error message now?
- Change the code so that you can change the value without getting an error message

*/

let constant = "Swift is cool!"

/*:
## Task #2

Create a constant with an explicit String type and the value "iOS FTW" - Then remove the type. Why is this possible?
 
*/

let explicitConstant : String = "iOS FTW"

/*:
 ## Task #3

 Create a numeric constant and a string constant, then create a constant that contains both.
 Complete this with string interpolation and without.

*/


/*:
 ## Task #4

Create an expression with string interpolation where you calculate the sum of 5 * 120 as part of the interpolation, print it using print()

*/

let num1 = 5
let num2 = 120
let sum = num1 * num2

let expression = "\(num1) * \(num2) = \(sum)"

print(expression)

/*:
 ## Task #5

Compare two strings and print "they are equal", if they are exactly the same, or "they are different" if they are different

*/

let string1 = "hei"
let string2 = "ok"

if string1 == string2 {
    print("they are equal")
} else {
    print("they are different")
}

/*:
 ## Task #6

Create a tuple with the content (5600, “iOS programming”). Then use print to print “PG5600 - iOS Programming”
 
*/

let tuple = (code: 5600, subject: "iOS programming")
print("\(tuple.code) - \(tuple.subject)")

/*:
 ## Task #7

 Create a loop where you print each word in an array on its own line
 Then create a loop that prints each letter of each word on a new line


Expected result
*/
//:    Falcon 9
//:    Dragon
//:    F
//:    a
//:    l
//:    c
//:    o
//:    n
//:
//:    9
//:    D
//:    r
//:    a
//:    g
//:    o
//:    n

let wordArray = ["Falcon 9", "Dragon"]

for word in wordArray {
    print(word)
}

for word in wordArray {
    for letter in word {
        print(letter)
    }
}

/*:
 ## Task #8

Create a dictionary with 5 key-value pairs, loop over it and print key and value with print

*/

let dictionary = ["red" : "rød", "yellow" : "gul", "green" : "grønn", "blue" : "blå", "violet" : "lilla"]

for keyPair in dictionary {
    print(keyPair)
}

/*:
 ## Task #9
 
 Create a new iOS project in "Single View Application" Xcode.
 1. Find the view controller that was created automatically
 2. Define strict constants for title, message and button.
 3. Create a UIAlertController that uses the constants you have defined.
 4. Override `viewDidAppear` and in the function body call the method `present` with the alert controller as an argument
 5. Run the simulator and verify that the text string appears.
 */


//:## Task #10

//:You got these two objects with data from an API, unfortunately it has come up with slightly different values in the array,
//:but the index and number of launches are still correct - Falcon 9 has 19 launches, Atlas V has 55, etc.
let rockets : [Any?] = ["Falcon 9", nil, -999, nil, "Atlas V", nil, "Space Shuttle", nil, "My Water bottle-rocket"]
let numberOfLaunches = [19, 55, 135, 1]

//:    Go through the rockets and print the rocket's name and number of launches in the format
//:    Falcon 9 : 19 launches
//:    ...
//:    My water bottle-rocket : 1 launch        // note that that there the missing plural "s" when there is only 1 launch

let rocketsFiltered = rockets.compactMap{$0 as? String}
let rocketLaunches = Dictionary(uniqueKeysWithValues: zip(rocketsFiltered, numberOfLaunches))
rocketLaunches.forEach {
    print("\($0.key): \($0.value) \($0.value > 1 ? "launches" : "launch")")
}

//:## Task #11

//: complete the following functions to return the expected result

func parseLanguages(languages: String) -> [String] {
    // Write your code here
    return languages.components(separatedBy: ", ")
}

func sortLanguages(languages: [String]) -> [String] {
    // Write your code here
    return languages.sorted()
}

let languages = "Swift, Java, Objective-C, Python"

let languagesArray = parseLanguages(languages: languages)

let sortedLanguages = sortLanguages(languages: languagesArray)

print(sortedLanguages)

//: expectd result: ["Java", "Objective-C", "Python", "Swift"]
