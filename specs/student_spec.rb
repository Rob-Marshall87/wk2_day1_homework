require('minitest/autorun')
require('minitest/rg')
require_relative('../student')

class TestStudent < MiniTest::Test

  def test_get_name
    student = Student.new("Matt", "E29")
    assert_equal("Matt", student.name)
  end

  def test_get_cohort
    student = Student.new("Matt", "E29")
    assert_equal("E29", student.cohort)
  end

  def test_set_name
    student = Student.new("Matt", "E29")
    student.name = "Robert"
    assert_equal("Robert", student.name)
  end

  def test_set_cohort
    student = Student.new("Matt", "E29")
    student.cohort = "E28"
    assert_equal("E28", student.cohort)
  end

  # def test_student_talk
  #   student = Student.new("Matt", "E29")
  #   assert_equal("I can talk", student.key(speech))
  # end

def test_gets_student_to_talk
  student = Student.new("Matt", "E29")
  assert_equal("I can talk", student.gets_student_to_talk)
end

def test_say_favourite_language
  student = Student.new("Matt", "E29")
  assert_equal("I love Ruby", student.say_favourite_language("Ruby"))
end

end
