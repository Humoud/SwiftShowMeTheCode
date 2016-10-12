// Here we demonstrate functions in swift
// Concentrating on three points:
//  * Pass-by-Value
//  * Pass-by-Reference
//  * External Name / Internal Name
//
// Drop this in a playground to see instant results.


func combineStr(str1: String, str2: String) -> String {
    return "\(str1) \(str2)"
}
// heed the second parameter in the function
// we have to type str2: then pass the second param
// because this is swift's syntax
// the goal is to make the function read like a sentence
// where str2 is both the internal and external name of the parameter

print(combineStr("swift", str2: "function"))

// Here we have different internal and external names
func combineStrings(string1: String, with string2: String) -> String {
    return "\(string1) \(string2)"
}

print(combineStrings("swifty", with: "functionz"))

// Here we have an internal name but no external
// Note the _
// The underscore means that we don't want an external name
func combineThese(string1: String, _ string2: String) -> String {
    return "\(string1) \(string2)"
}

print(combineThese("swifting", "the functions"))



// Pass-by-Value
// We cannot alter the values of the parameters
// Swift is copying the values passed to the functions as constants
func doubleInt(integer: Int) -> Int{
    // integer = integer * 2  // => This will cause a "cannot assign to value: 'integer' is a 'let' constant" Error
    // return integer
    return integer * 2
}

var value1: Int = 2
// the value of value1 does not change
print(doubleInt(value1))
print(value1)


// Pass-by-Ref
// Here we use the "inout" keyword, to enable pass-by-ref
// Notice how now we are able to modify the value of the passed param
func doubleInteger(inout integer: Int) -> Int{
    integer = integer * 2
    return integer
}

var value2: Int = 4
// pay attention to the ampersand, this means that the parameter is passed by ref.
print(doubleInteger(&value2))
// And here we can see the pass-by-ref behavior
print(value2)
