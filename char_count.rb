require 'pry'
def count_letters(string)
  new_hash = Hash.new(0)
  string.split('').each do |letter|
    if letter == ' '
    else
      new_hash[letter] += 1
    end
  end
  new_hash
end

p count_letters('lighthouse in the house...')