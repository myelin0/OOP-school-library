class Nameable
  def correct_name
    raise NotImplementedError
  end
end

class BaseDecorator < Nameable
  def initialize(nameable)
    super()
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end

class CapitalizeDecorator < BaseDecorator
  def correct_name
    @nameable.correct_name.to_s.capitalize
  end
end

class TrimmerDecorator < BaseDecorator
  def correct_name
    string = @nameable.correct_name
    string[0...10] if string.length >= 10
  end
end
