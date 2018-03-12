require('minitest/autorun')
require_relative('../codeclan_students.rb')

class TestStudents < MiniTest::Test

def test_student_name_and_cohort__getters
  student = Student.new("Jim", 100)
  assert_equal("Jim", student.name)
  assert_equal(100, student.cohort)
end

def test_student_name_and_cohort__setters
  student = Student.new("Jim", 100)
  student.name = "Tim"
  student.cohort = 101
  assert_equal("Tim", student.name)
  assert_equal(101, student.cohort)
end

def test_student_talk
  student = Student.new("Jim", 100)
  result = student.talk
  assert_equal("I can talk!", result)
end

def test_favourite_language
  student = Student.new("Jim", 100)
  result = student.favourite_language
  assert_equal("I love Ruby!", result)
end











end
