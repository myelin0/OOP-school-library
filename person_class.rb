class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(name, age = 'unknown', parent_permission: true)
    @id = Random.rand(1...1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    @age >= 18 || @parent_permission
  end

  private

  def of_age?
    age >= 18
  end
end

p person1 = Person.new('sam', 19, false)
p person1.of_age?
p person1.can_use_services?
