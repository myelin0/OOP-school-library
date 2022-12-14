require_relative '../classes/student_class'
require_relative '../classes/classroom'

describe Student do
  before :each do
    @student = Student.new(21, 'Albert Einstein', parent_permission: true)
  end

  it 'returns a student object' do
    expect(@student).to be_instance_of(Student)
  end

  it 'return inherits methods from the person class' do
    expect(@student.can_use_services?).to be true
  end

  it 'has name as Albert Einstein' do
    expect(@student.name).to eql('Albert Einstein')
  end

  it 'allows student to play hooky' do
    expect(@student.play_hooky).to eql("¯\(ツ)/¯")
  end

  it 'allows student to be in a classroom' do
    classroom = Classroom.new('Science')
    @student.classroom = classroom
    expect(@student.classroom).to eql(classroom)
  end
end
