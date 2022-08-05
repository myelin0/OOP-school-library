require_relative '../classes/decorator_class'
require_relative '../classes/person_class'

describe Person do
  context 'tests for the nameable class' do
    person = Person.new(35, 'virginia woolf', parent_permission: true)
    person.correct_name
    capitalized_person = CapitalizeDecorator.new(person)

    capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)

    it 'returns capitalized name' do
      expect(capitalized_person.correct_name).to eq('Virginia woolf')
    end

    it 'returns capitalized name with characters from 0 to 10' do
      expect(capitalized_trimmed_person.correct_name).to eq('Virginia w')
    end
  end
end
