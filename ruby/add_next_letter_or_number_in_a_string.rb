require 'rspec'

def increment_value(string)
  string << string.next.slice(-1)
end

describe 'Increment string value sequence' do
  it 'it appends the next item in the sequence of a string' do
    expect(increment_value 'abcde').to eq('abcdef')
    expect(increment_value '12345').to eq('123456')
  end
end

p increment_value('abc')

