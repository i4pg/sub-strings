# frozen_string_literal: true

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

def substrings(text, dictionary)
  dictionary.each_with_object({}) do |word, match|
    match[word] = text
                  .scan(/\w{2,}/)
                  .join
                  .downcase
                  .scan(/#{word}/)
                  .length
  end.select { |_word, match| match.positive? }
end

substrings('below', dictionary)
substrings("Howdy partner, sit down! How's it going? ", dictionary)
