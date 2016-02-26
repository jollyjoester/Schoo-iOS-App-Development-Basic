//: Playground - noun: a place where people can play

// コメント

/*

複数行コメント

*/

import UIKit

var str = "Hello, Swift"
str = "こんにちはSwift！"

//str = 1

var int = 1
int = 5

var stringValue : String = "String"
var intValue : Int = 1
var doubleValue : Double = 70.5
var boolValue : Bool = true // false

var strX = "Happy"
var strY = "Birthday"
var strZ = strX + strY

var intX = 100
var intY = 50
var intZ = intX + intY

var doubleX = 50.5
var doubleY = 2.2
var doubeZ = doubleX + doubleY

//var result1 = strX + intX
//var result2 = intX + doubleX

var result1 = strX + String(intX)
var result2 = Double(intX) + doubleX

var strToInt1 = Int("10")
var strToInt2 = Int("十")

//strToInt1 + 20

//strToInt1! + 20
//strToInt2! + 20

if let value1 = strToInt1 {
    value1 + 20
} else {
    print("value1がnilです")
}

if let value2 = strToInt2 {
    value2 + 20
} else {
    print("value2がnilです")
}

let score : Int = 85
//score = 100

if score >= 70 {
    print("合格")
} else {
    print("失格")
}

var label = ""
switch score {
case 50..<70 :  // 50〜69まで
    label = "可"
case 70..<90 :  // 70〜89まで
    label = "良"
case 90...100 : // 90〜100まで
    label = "優"
default :       // 上記以外
    label = "不可"
}
print("あなたの点数は\(score)点、成績は\(label)です")

var count = 0
for i in 1...10 {
    count += i
}

count = 0
for var i = 1; i <= 10; i++ {
    count += i
}

func square(n : Int) -> Int {
    return n * n
}

square(4)
square(8)
