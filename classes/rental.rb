class Rental
  attr_accessor :book, :person, :date

  def initialize(date, book, person)
    @book = book
    @person = person
    @date = date
  end

  def to_json(*_args)
    {
      JSON.create_id => self.class.name,
      'date' => @date,
      'book' => @book,
      'person' => @person
    }
  end
end # rubocop:todo Layout/EndOfLine
