#
# For this part we want you to make a class that represents a CodeClan student.
#
# Create a class called Student that takes in a name (String) and a cohort (string - e.g "E18", "G6", etc) when an new instance is created.
# Create a couple of Getter methods, one that returns the name property and one that returns the cohort property of the student.
# Add in Setter methods to update the students name and what cohort they are in.
# Create a method that gets the student to talk (eg. Returns "I can talk!).
# Create a method that takes in a students favourite programming language and returns it as part of a string (eg. student1.say_favourite_language("Ruby") -> "I love Ruby").


require('minitest/autorun')
require('minitest/rg')
require_relative('../students')

class TestStudents < MiniTest::Test
  def test_name
    student1 = Students.new('Gemma','E23')
    assert_equal("Gemma", student1.name)
  end

  def test_cohort
    student1 = Students.new('Ricardo','E23')
    assert_equal("E23", student1.cohort)
  end

  def test_set_name
    student1 = Students.new('Gemma','E23')
    student1.set_name("Marcin")
    assert_equal("Marcin", student1.name)
  end

  def test_set_cohort
    student1 = Students.new('Ricardo', 'E23')
    student1.set_cohort('E24')
    assert_equal("E24",student1.cohort)
  end

  def test_student_talk
    student2 = Students.new("tahnee", 'E23')
    assert_equal("I can talk", student2.talk("I can talk"))
  end

  def test_say_favourite_language
    student2 = Students.new("Tahnee", "E23")
    assert_equal("I love Ruby", student2.say_favourite_language("Ruby"))
  end
end
