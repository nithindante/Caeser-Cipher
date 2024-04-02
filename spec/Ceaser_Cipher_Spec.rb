require './lib/Ceasar_Cipher'


describe Caesar_cipher do
  describe '#Caesar_cipher' do
    it 'Caesar_cipher on the Strings' do
      caesar_cipher = Caesar_cipher.new
      expect(caesar_cipher.caesar_cipher("What a string!", 5)).to eql("Bmfy f xywnsl!")
    end
  end
end
