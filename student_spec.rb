require('minitest/autorun')
require('minitest/rg')
require_relative('../student')

class Teststudent < Minitest::Test

def test_name
  student_detail = Student.new("Neil", "G13")
  assert_equal("Neil",student_detail.name)
end

def test_cohort
  student_detail = Student.new("Neil", "G13")
  assert_equal("G13",student_detail.cohort)
end

def test_set_name
  student_detail = Student.new("Neil", "G13")
  student_detail.set_name("Neil")
  assert_equal("Neil",student_detail.name)
end

def test_set_cohort
  student_detail = Student.new("Neil", "G13")
  student_detail.set_cohort("G13")
  assert_equal("G13",student_detail.cohort)
end

def test_student_talk
  student_detail = Student.new("Neil", "G13")
  student_detail.student_talk
  assert_equal("I can talk", student_detail.student_talk)
end

def test_student_language
  student_detail = Student.new("Neil", "G13")
  student_detail.student_language("Ruby")
  assert_equal("I love Ruby", student_detail.student_language("Ruby"))
end

end
