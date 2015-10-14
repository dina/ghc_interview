name = "Palindrome"
content = "Detect whether a string is a palindrome."
test_cases = [["\"hello world\"", false], ["\"tacocat\"", true], ["\"racecar\"", true]], ["\"dood\"", true]]
format = :bullet
q = Question.create(name: name, content: content, test_cases: test_cases, format: format, number: 1)

code = <<-CODE
def palindrome(word)
  even = word.length % 2 == 0
  start_p = 0
  end_p = word.length - 1

  loop do
    start_p += 1
    end_p -= 1
    return false if word[start_p] != word[end_p]
    break if (even && start_p + 1 == end_p) || (!even && start_p == end_p)
  end

  return word[start_p] == word[end_p]
end
CODE
Solution.create(question: q, code: code)


name = "Line Items"
content = "Given a list of quantities and items, print the total count and name of each item."
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
    "5 square stand",
    "3 coffee",
    "2 credit card",
    "8 donut"
  ]
]
format = :raw
q = Question.create(name: name, content: content, test_cases: test_cases, format: format, number: 2)

code = <<-CODE
def line_items(items_arr)
  items_hash = {}

  items_arr.each do |item|
    count, name = item.scan(/([\d]+)([\D]+)/).flatten
    items_hash[name] = items_hash[name].to_i + count.to_i
  end

  items_hash.each do |k, v|
    puts v.to_s + k
  end
end
CODE
Solution.create(question: q, code: code)


name = "Reverse String"
content = "Reverse a string in place (without creating an additional array)."
test_cases = [
  ["\"hello world\"", "\"dlrow olleh\""],
  ["\"Grace Hopper\"", "\"reppoH ecarG\""],
  ["\"I heart coding!\"", "\"!gnidoc traeh I\""]
]
format = :bullet
q = Question.create(name: name, content: content, test_cases: test_cases, format: format, number: 3)

code = <<-CODE
def reverse_string(str)
  even = str.length % 2 == 0
  start_p = 0
  end_p = str.length - 1

  loop do
    temp = str[start_p]
    str[start_p] = str[end_p]
    str[end_p] = temp

    start_p += 1
    end_p -= 1

    break if (even && start_p - 1 == end_p) || (!even && start_p == end_p)
  end

  str
end
CODE
Solution.create(question: q, code: code)


name = "Unsorted Array"
content = "Return the second largest number in an unsorted array, without sorting the array."
test_cases = [
  ["[1, 2, 3, 4, 5, 6]", "5"],
  ["[6, 7, 2, 5, 2, 8]", "7"],
  ["[90, 23, 64]", "64"]
]
format = :bullet
q = Question.create(name: name, content: content, test_cases: test_cases, format: format, number: 4)

code = <<-CODE
def second_largest(arr)
  largest = 0
  second_largest = 0

  arr.each do |i|
    largest = i if i > largest
  end

  arr.each do |i|
    second_largest = i if i < largest && i > second_largest
  end

  second_largest
end
CODE
Solution.create(question: q, code: code)


name = "Merge Arrays"
content = "Merge two sorted arrays. The resulting array should also be sorted."
test_cases = [
  ["[1, 5, 8, 10, 15]", "[4, 7, 10, 11, 45]"],
  ["[1, 4, 5, 7, 8, 10, 10, 11, 15, 45]"]
]
format = :raw
q = Question.create(name: name, content: content, test_cases: test_cases, format: format, number: 5)

code = <<-CODE
def merge(a, b)
  arr = []
  a_pointer = 0
  b_pointer = 0
  length = a.length + b.length - 1

  (0..length).each do |i|
    break if a_pointer == a.length && b_pointer == b.length
    if b_pointer == b.length || (a_pointer < a.length && a[a_pointer] < b[b_pointer])
      arr << a[a_pointer]
      a_pointer += 1
    else
      arr << b[b_pointer]
      b_pointer += 1
    end
  end

  arr
end
CODE
Solution.create(question: q, code: code)


name = "Hello Square"
content = "The Rules: (1) For multiples of 3, print \"Hello\" instead of the number. (2) For multiples of 5, print \"Square\" instead of the number. (3) For multiples of 3 and 5, print \"HelloSquare\" instead of the number."
test_cases = [
  [20],
  [1, 2, "Hello", 4, "Square", "Hello", 7, 8, "Hello", "Square", 11, "Hello", 13, 14, "HelloSquare", 16, 17, "Hello", 19, "Square"]
]
format = :raw
q = Question.create(name: name, content: content, test_cases: test_cases, format: format, number: 6)

code = <<-CODE
def hello_square(n)
  (1..n).each do |i|
    if i % 3 == 0 && i % 5 == 0
      puts "HelloSquare"
    elsif i % 3 == 0
      puts "Hello"
    elsif i % 5 == 0
      puts "Square"
    else
      puts i
    end
  end
end
CODE
Solution.create(question: q, code: code)


name = "Binary Search"
content = "Given a sorted array of numbers and the number n, return the index of n in the array."
test_cases = [
  ["7, [1, 4, 5, 7, 8, 10, 10, 11, 15, 45]"],
  ["3"]
]
format = :raw
q = Question.create(name: name, content: content, test_cases: test_cases, format: format, number: 7)

code = <<-CODE
def binary_search(arr, n)
  start_index = 0
  end_index = arr.length - 1
  mid = end_index/2

  while start_index + 1 < end_index
    return mid if arr[mid] == n
    if n > arr[mid]
      start_index = mid
    else
      end_index = mid
    end
    mid = (end_index - start_index)/2 + start_index
  end

  return end_index if arr[end_index] == n
  return start_index if arr[start_index] == n
  return nil
end
CODE
Solution.create(question: q, code: code)
