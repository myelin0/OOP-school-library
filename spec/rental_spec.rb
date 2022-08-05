require_relative '../classes/rental'
require_relative '../classes/book'

describe Rental do
  before :each do
    @book = Book.new('Flowers for Algernon', 'Daniel Keyes')

    @teacher = Teacher.new('literature', 33, 'Diana')
    @rental = Rental.new('2022-08-04', @book, @teacher)
  end

  it 'it should return parameters' do
    expect(@rental.date).to eq('2022-08-04')
    expect(@rental.book.title).to eq('Flowers for Algernon')
    expect(@rental.person.name).to eql('Diana')
  end

  it 'it should return instance' do
    expect(@rental).to be_instance_of Rental
  end
end
