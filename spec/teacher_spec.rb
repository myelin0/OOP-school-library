require_relative '../classes/teacher_class'

describe Teacher do
  before :each do
    @teacher = Teacher.new('math', 33, 'Virginia Woolf')
  end

  it 'it should return true' do
    expect(@teacher.can_use_services?).to be true
  end

  it 'it should return parameters' do
    expect(@teacher.specialization).to eql('math')
    expect(@teacher.age).to be(33)
    expect(@teacher.name).to eql('Virginia Woolf')
  end

  it 'it should return instance' do
    expect(@teacher).to be_instance_of Teacher
  end
end
