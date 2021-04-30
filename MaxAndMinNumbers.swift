/*
This program generate array of 10 random numbers between 1 to 99,
find and shows maximum and minimum values of the array.
author  Jay Lee
version 1.0
since   2020-04-30
*/

func Max(array: [Int]) -> Int {
  // Set initial maximum value
  var maxValue = array[0]

  // Find max value
  for number in array {
    if (number > maxValue) {
      maxValue = number
    }
  }

  // Return max value
  return maxValue
}

func Min(array: [Int]) -> Int {
  // Set initial maximum value
  var minValue = array[0]

  // Find min value
  for number in array {
    if (number < minValue) {
      minValue = number
    }
  }

  // Return min value
  return minValue
}

var array = [Int]()
print("Array: ", terminator:"")

for _ in 0..<10 {
  // Generate 10 random numbers
  let randomNumber = Int.random(in: 1...99)
  array.append(randomNumber)
  print(randomNumber, terminator:" ")
}

// Process
let maxValue = Max(array: array)
let minValue = Min(array: array)

// Output
print("\nMaximum: \(maxValue), Minimum: \(minValue)")
print("\nDone.")
