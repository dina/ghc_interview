name = "Palindrome"
content = "Detect whether a string is a palindrome."
test_cases = [["\"hello world\"", false], ["\"taco cat\"", true], ["\"racecar\"", true]]
format = :bullet
q = Question.create(name: name, content: content, test_cases: test_cases, format: format, number: 1)


name = "Line Items"
content = "Return the line item and its count in ascending order."
test_cases = [
  [
    "1 square stand",
    "3 coffee",
    "1 credit card",
    "1 donut",
    "4 square stand",
    "1 credit card",
    "7 donut"
  ],
  [
    "8 donut",
    "5 square stand",
    "3 coffee",
    "2 credit card"
  ]
]
format = :raw
q = Question.create(name: name, content: content, test_cases: test_cases, format: format, number: 2)


name = "Reverse String"
content = "Reverse a string in place."
test_cases = [
  ["\"hello world\"", "\"dlrow olleh\""],
  ["\"Grace Hopper\"", "\"reppoH ecarG\""],
  ["\"I heart coding!\"", "\"!gnidoc traeh I\""]
]
format = :bullet
q = Question.create(name: name, content: content, test_cases: test_cases, format: format, number: 3)


name = "Fibonacci Sequence"
content = "The Rule is xn = xn-1 + xn-2. Calculate xn given n."
test_cases = [
  ["0", "0"],
  ["1", "1"],
  ["2", "1"],
  ["3", "2"],
  ["10", "55"],
]
format = :bullet
q = Question.create(name: name, content: content, test_cases: test_cases, format: format, number: 4)


name = "Factorial"
content = "Calculate the factorial of n."
test_cases = [
  ["0", "1"],
  ["1", "1"],
  ["2", "2"],
  ["3", "6"],
  ["10", "3628800"],
]
format = :bullet
q = Question.create(name: name, content: content, test_cases: test_cases, format: format, number: 5)


name = "Unsorted Array"
content = "Return the second highest number in an unsorted array."
test_cases = [
  ["[1, 2, 3, 4, 5, 6]", "5"],
  ["[6, 7, 2, 5, 2, 8]", "7"],
  ["[90, 23, 64]", "64"]
]
format = :bullet
q = Question.create(name: name, content: content, test_cases: test_cases, format: format, number: 6)


name = "Merge Arrays"
content = "Merge two sorted arrays. The resulting array should also be sorted."
test_cases = [
  ["[1, 5, 8, 10, 15]", "[4, 7, 10, 11, 45]"],
  ["[1, 4, 5, 7, 8, 10, 10, 11, 15, 45]"]
]
format = :raw
q = Question.create(name: name, content: content, test_cases: test_cases, format: format, number: 7)


name = "Hello Square"
content = "The Rules: (1) For multiples of 3, print \"Hello\" instead of the number. (2) For multiples of 5, print \"Square\" instead of the number. (3) For multiples of 3 and 5, print \"HelloSquare\" instead of the number."
test_cases = [
  [20],
  [1, 2, "Hello", 4, "Square", "Hello", 7, 8, "Hello", "Square", 11, "Hello", 13, 14, "HelloSquare", 16, 17, "Hello", 19, "Square"]
]
format = :raw
q = Question.create(name: name, content: content, test_cases: test_cases, format: format, number: 8)
