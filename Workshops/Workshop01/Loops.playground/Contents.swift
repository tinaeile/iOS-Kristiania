import UIKit

// Task 1

for i in 0...100 {
    if ((i % 3 == 0) && (i % 5 == 0)) {
        print("\(i): TikTok")
    } else if (i % 3 == 0) {
        print("\(i): Tik")
    } else if (i % 5 == 0) {
        print("\(i): Tok")
    } else {
        print(i)
    }
}

// Task 2

func reverse(sentence: String){
    let res = sentence
        .components(separatedBy: " ")
        .map { $0.reversed() }
        .joined(separator: " ")
    print("\nTask 2 : \(String(res))")
}

reverse(sentence: "uoY did !ti")
