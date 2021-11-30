dictionary = %w[below down go going horn how howdy it i low own part partner sit]
def substrings(text, array)
  result = array.each_with_object({}) do |str, acc|
    text.split(' ').each do |word|
      next unless word.include?(str)

      acc[str] = 0 unless acc[str]
      acc[str] += 1
    end
  end
  p result
end
# substrings('below', dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
