# Source that I used to study and remember about permutation and combinations
# https://www.cs.sfu.ca/~ggbaker/zju/math/perm-comb-more.html

def generated_list_of_all_lower_upper_cases(string)
  ['Hii', 'Hii', 'Hii', 'Hii', 'Hii', 'Hii', 'Hii', 'Hii']
end

# The lower case of every string in the list should be equal of the lower case
# of the original string
def string_elements_matches_lower_cased_value?(array, value)
  !array.any? { |string| string.downcase != value.downcase }
end

string = 'Hii'
list = generated_list_of_all_lower_upper_cases(string)
puts "The lower case of every string in the list should be equal of the lower case"
puts "of the original string"
puts "Result: #{string_elements_matches_lower_cased_value?(list, 'Hii')}"


# The list should contain all permutation possibilities for lower and upper case for string
def list_has_two_permutation_possibilities_for_size?(array, string_size)
  possibility = 2
  (possibility ** string_size) == array.length
end

string = 'Hii'
list = generated_list_of_all_lower_upper_cases(string)
puts "The list should contain all permutation possibilities for lower and upper case for string"
puts "Result: #{list_has_two_permutation_possibilities_for_size?(list, string.length)}"
