/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
let collection: [Any] = [1.5, 2.3, 7, "Joko", false]
print(collection)
//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
for i in collection {
  print(i)
}

//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
let dict: [String: Any] = ["sample": 5.5, "sample2": 8, "sample3": "123", "sample4": false]
print(dict)
//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var total: Double = 0
for i in dict {
  if let number = i.value as? String {
    total += 1
  }
  
  if let number = i.value as? Bool {
    total += 2
  }
  
  if let number = i.value as? Int {
    total += Double(number)
  }
  
  if let number = i.value as? Double {
    total += number
  }
}

print(total)
//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
var total2: Double = 0
for i in dict {
  if let num = i.value as? Int {
    total2 += Double(num)
  }
  
  if let num = i.value as? Double {
    total2 += num
  }
  
  if let num = i.value as? String {
    total2 += Double(num)!
  }
}

/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */
