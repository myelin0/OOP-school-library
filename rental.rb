class Rental
  attr_accessor :book, :person, :date

  def initialize(date, book, person)
    @book = book
    book.rentals << self

    @person = person
    person.rentals << self

    @date = date
  end
end
