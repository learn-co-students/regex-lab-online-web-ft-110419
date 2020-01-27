# Working with Regular expressions
#   #starts_with_a_vowel?
#     returns true for words starting with a vowel (FAILED - 1)
#     returns false for words starting with a consonant (FAILED - 2)
#   #words_starting_with_un_and_ending_with_ing
#     returns an array with the words starting with 'un' and ending with 'ing' (FAILED - 3)
#   #words_five_letters_long
#     returns an array of words that are five letters long (FAILED - 4)
#   #first_word_capitalized_and_ends_with_punctuation?
#     Returns true for text starting with a capital letter and ending with puncutation (FAILED - 5)
#     Returns false for text starting with an uncapitalized letter but ending with puncutation (FAILED - 6)
#     Returns false for text starting with a capital letter but ending without puncutation (FAILED - 7)
#     Returns false for text starting without a capital letter and ending withoutpuncutation (FAILED - 8)

def starts_with_a_vowel?(word)
word.match(/^[aeiouAEIOU]\w+/) ? true : false
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/\bun\w*ing\b/)
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  text.match?(/^[A-Z].*\W$/)
end

def valid_phone_number?(phone)
  phone.match(/([0-9] *){10}|(\([0-9]{3}\)(([0-9]{3}-[0-9]{4})|[0-9]{7})\b)/) ? true : false
end
