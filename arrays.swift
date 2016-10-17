// Explicit Declaration
let dogHouses: Array<String> // uninitialized
let dogNames: Array<String> = ["maple", "winter"]

// Inferred Declaration
var dogAges = Array<Int>() // initialized, empty int array
let dogBreeds = [String]() // initialized, empty String array

// Inserting Elements
dogAges.append(1)
// Inserting and specifying where the insertion should take place
dogAges.insert(5, at: 0)
dogAges += [3]
dogAges.count

// Updating Elements
dogAges[1] = 6
dogAges

// Sort Elements
dogAges.sort()

// Iterating Over Array
for age in dogAges {
    print("dog age: \(age)")
}
// if you require an index
for (index, age) in dogAges.enumerated(){
    print("\(index). \(age)")
}


// Removing Elements
let lastDogAge = dogAges.removeLast()
let firstDogAge = dogAges.removeFirst()
dogAges.removeAll()
// I would to note that there is a removeAtIndex(Int) method as well

if dogAges.isEmpty {
    print("Dog ages array is now empty")
}
