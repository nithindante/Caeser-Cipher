require './lib/Ceasar_Cipher'


describe Caesar_cipher do
  describe '#Caesar_cipher' do
    it 'Caesar_cipher when working on normal strings' do
      #caesar_cipher = Caesar_cipher.new
      expect(subject.caesar_cipher("What a string!",5)).to eql("Bmfy f xywnsl!")
    end
  end

  describe '#Caesar_cipher' do
    it 'Caesar_cipher when no input is given' do
      #caesar_cipher = Caesar_cipher.new
      expect(subject.caesar_cipher("",0)).to eql("Please enter a String")
    end
  end

  describe '#Caesar_cipher' do
    it 'Caesar_cipher when negative shift is given' do
      #caesar_cipher = Caesar_cipher.new
      expect(subject.caesar_cipher("What a string!",-5)).to eql("Rc\\o \\ nomdib!")
    end
  end

  describe '#Caesar_cipher' do
    it 'Caesar_cipher when input is not a string is given' do
      #caesar_cipher = Caesar_cipher.new
      expect(subject.caesar_cipher("123",5)).to eql("Please enter a String")
    end
  end

  describe '#Caesar_cipher' do
    it 'Caesar_cipher when when huge negative shift is given' do
      #caesar_cipher = Caesar_cipher.new
      expect(subject.caesar_cipher("Hello,my name is Ruby",-34)).to eql("&CJJM,KW L?KC GQ 0S@W")
    end
  end

  describe '#Caesar_cipher' do
    it 'Caesar_cipher when input for shift is not a integer' do
      #caesar_cipher = Caesar_cipher.new
      expect(subject.caesar_cipher("Hello,my name is Ruby","a")).to eql("Please enter a String")
    end
  end
end
