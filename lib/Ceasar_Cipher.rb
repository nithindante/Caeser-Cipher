require 'pry-byebug'
class Caesar_cipher
  def caesar_cipher(string,num)
    unless /\A[\p{L}\s\p{P}]+\z/.match?(string)
        return "Please enter a String"
     else
    if num.class != Integer
      return "Please enter a String"
    else
    arr = string.split('')
    newArr = []
    arr.map do |letter|
      if letter.to_i.to_s==true
        return "please enter a String"

      else
        if letter.ord <=64 || (letter.ord).between?(90, 96)
         newArr.push(letter)
         next
        elsif letter.ord >= 122 - num || letter.ord.between?(90 - num,90)
          a = letter.ord - (122 - num)
          letter = 96 + a
          newArr.push(letter.chr)
        else
          letter = letter.ord + num
          newArr.push(letter.chr)
        end
      end
     end
  end
     return newArr.join
  end
end
end
