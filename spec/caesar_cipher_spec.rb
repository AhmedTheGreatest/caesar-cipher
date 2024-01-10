require './lib/caesar_cipher'

describe 'Caesar Cipher' do
  it 'returns the expected cipher text with all capital and lower case letters' do
    expect(caesar_cipher('The quick brown fox jumps over the lazy dog', 5)).to eql('Ymj vznhp gwtbs ktc ozrux tajw ymj qfed itl')
  end

  it 'returns the expected cipher text with numbers' do
    expect(caesar_cipher('Hey212', 5)).to eql('Mjd212')
  end

  it 'returns the expected cipher text with numbers' do
    expect(caesar_cipher('Well, Hello There! I am Trooper # 7777', 5)).to eql('Bjqq, Mjqqt Ymjwj! N fr Ywttujw # 7777')
  end

  it 'returns the expected cipher with negative factor' do
    expect(caesar_cipher('Well, Hello There! I am Trooper # 7777', -5)).to eql('Rzgg, Czggj Oczmz! D vh Omjjkzm # 7777')
  end

  it 'returns the same string when passed 0 as the factor' do
    expect(caesar_cipher('Lorem ipsum dolar sit emet', 0)).to eql('Lorem ipsum dolar sit emet')
  end
end
