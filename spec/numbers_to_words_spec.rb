require('rspec')
require('numbers_to_words')

describe('#numbers_to_words') do
  # it('accept a number between 1 and 9 and converts it to word') do
  #   expect(numbers_to_words(9)).to(eq("nine"))
  # end
  it('accept a number between 10 and 99 and converts it to word') do
    expect(numbers_to_words(742)).to(eq("seven hundred fourty two"))
  end
  it('accept a number between 10 and 99 which has a teen in it and converts it to word') do
    expect(numbers_to_words(312)).to(eq("three hundred twelve"))
  end
end
