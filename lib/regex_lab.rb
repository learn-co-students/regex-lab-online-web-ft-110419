def starts_with_a_vowel?(word)
  if word[0].match(/[aeiouAEIOU]/) != nil
    return true
  else
    return false
  end
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/\bun\w*ing\b/)
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  if text.match(/\A[A-Z]/) && text.match(/\W\z/) && text.match(/\D\z/)
    return true 
  else
    false
  end
end

def valid_phone_number?(phone)
  if phone.match(/\D?+\d{3}+\D?+\d{3}+\D?+\d{4}/) 
    if phone.match(/[a-zA-Z]/) == nil  
      return true 
    end
  else
    return false
  end
end