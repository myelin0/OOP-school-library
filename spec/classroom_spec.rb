require_relative '../classes/classroom'

describe Classroom do
  before :each do
    @classroom = Classroom.new('physics-A')
  end
  it 'it should return classroom instance' do
    expect(@classroom).to be_instance_of Classroom
  end

  it 'it should return AB' do
    expect(@classroom.label).to eql('physics-A')
  end
end
