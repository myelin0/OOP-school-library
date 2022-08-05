require_relative '../classes/book'

describe Book do
  before :each do
    @book = Book.new('Clean Code', 'Robert C. Martin')
  end

  it 'returns a new book object' do
    expect(@book).to be_instance_of(Book)
  end

  it 'accepts 2 parameters' do
    expect(@book.title).to eq('Clean Code')
    expect(@book.author).to eq('Robert C. Martin')
  end

  it 'does not accept less than 2 parameters' do
    expect { Book.new('Clean Code') }.to raise_error(ArgumentError)
  end

  it 'does not accept more than 2 parameters' do
    expect { Book.new('Clean Code', 'last edition', 'published in 2010') }.to raise_error(ArgumentError)
  end

  it 'does not have any rentals' do
    expect(@book.rentals.length).to eq(0)
    expect(@book.rentals).to eq([])
  end
end
