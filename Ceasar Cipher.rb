require 'pry-byebug'

def caesar_cipher(string,num)
    arr = string.split('')
    newArr = []  
    arr.map do |letter|
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
     print newArr.join
end

caesar_cipher("What a string!", 5)
