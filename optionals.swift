// Here we demonstrate working with Optionals in Swift
// in Swift, Optionals are basically the type which is allowed to hold (reference to be more accurate) a null (nil).

// We use "?" to declare an optional
var age: Int?

if age == nil {
    // Since age is nil
    // This will be executed
    print("There is no age")
} else{
    print("age: \(age)")
}

age = 21

if age == nil {
    print("There is no age")
} else{
    // This will print = age: Optional(21)
    // We want to remove the "Optional()"
    // The act of removing it is called "unwrapping"
    print("age: \(age)")
}


// Unwrapping:
// There are two ways to unwrap an optional
//  * Forced unwrapping
//  * Safe Unwrapping:
//      - forced unwrapping after checking
//      - if let binding
//      - nil coalescing


var name: String?
name = "Jimmy Eat World"

// We use the "!" to Force Unwrap
// Now it's not recommended to do this unless you can truely guarantee
// that the name variable is not nil.
// Uncomment the line which assings a value to the name variable and you
// and you will know why
print(name!)


// Safe Unwrapping can be done three ways here is
// the safe and long way of going about it

if name != nil {
    var unwrappedName = name!
    print(name)
} else {
    print("name is nil")
}

// a shorter way is using an if let binding

if let unwrappedName = name {
    print(unwrappedName)
} else {
    print("name is nil, can't print it")
}

// and the finally, the nil coalescing method
// this method is a one liner which assings a default value if the optional is nil

var nameUnwrapped: String = name ?? "no name"
print(nameUnwrapped)
