require_relative 'decorator_class'

class Person < Nameable
  attr_accessor :name, :age, :id, :parent_permission
  attr_reader :rentals

  def initialize(age, name = 'unknown', parent_permission: true)
    super()
    @id = Random.rand(1...1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def can_use_services?
    @age >= 18 || @parent_permission
  end

  def correct_name
    @name
  end

  def add_rental(book, date)
    @rentals.push(Rental.new(date, book, self)) unless @rentals.include?(Rental.new(date, book, self))
  end

  private

  def of_age?
    age >= 18
  end
end
