# Source that I used to study and remember about permutation and combinations
# https://www.cs.sfu.ca/~ggbaker/zju/math/perm-comb-more.html

def generated_list_of_all_lower_upper_cases(string)
  ['aaa', 'aaA', 'aAa', 'Aaa', 'AAa', 'AAA', 'AaA', 'aAA']
end

# The lower case of every string in the list should be equal of the lower case
# of the original string
def string_elements_matches_lower_cased_value?(array, value)
  !array.any? { |string| string.downcase != value.downcase }
end

string = 'aaa'
list = generated_list_of_all_lower_upper_cases(string)
puts "The lower case of every string in the list should be equal of the lower case"
puts "of the original string"
puts "Result: #{string_elements_matches_lower_cased_value?(list, 'aaa')}"


# The list should contain all permutation possibilities for lower and upper case for string
def list_has_two_permutation_possibilities_for_size?(array, string_size)
  possibility = 2
  (possibility ** string_size) == array.length
end

string = 'aaa'
list = generated_list_of_all_lower_upper_cases(string)
puts "The list should contain all permutation possibilities for lower and upper case for string"
puts "Result: #{list_has_two_permutation_possibilities_for_size?(list, string.length)}"


string = 'aaa'
list = generated_list_of_all_lower_upper_cases(string)
puts "The list should not have repeated elements"
puts "Result: #{(list.uniq.length == list.length)}"
