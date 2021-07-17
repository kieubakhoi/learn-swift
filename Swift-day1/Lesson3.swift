import Foundation

// This is about lesson 3 : String and Charactors

let welcome = """
My name is kieu ba khoi
My age is 21 years old
Somethign about me can be showed  later
"""
print(welcome)

var nullString = ""
if(nullString.isEmpty){print("This variable is null")}                     // check isEmpty
var text = "hehe"
nullString.append(text) ; print ("The text in nullString :\(nullString)") // inset text in lastest String

let width = 20
let squareWidth = "The square is \(width * width)"              // to make operator in a string


let uniCodeText = "This is umbrella:  \u{2602}"
print(uniCodeText)                          // use UniCode in a String

print(uniCodeText[uniCodeText.index(after : uniCodeText.startIndex)])  // get charactor 2 in String

print(uniCodeText[uniCodeText.index(uniCodeText.startIndex,offsetBy:2)])

let text1 = "here you are";
let text2 = "here you are";
if(text1 == text2){print("This is comparison two strings")}

let tStart = text1.startIndex 
let tEnd = text1.index(text1.startIndex, offsetBy:4)
let text3 = text1[tStart ... tEnd] ;
print(text3)

let textWithPrefix = "I am khoi"
 textWithPrefix.hasPrefix("I am")

let textWithPostfix = "You are student"
 textWithPostfix.hasPostfix("student")



