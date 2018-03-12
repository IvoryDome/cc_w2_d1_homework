class Student

attr_accessor :name, :cohort, :favourite_language, :talk

def initialize(input_name, input_cohort, input_talk = "I can talk!", input_favourite_language = "Ruby")
  @name = input_name
  @cohort = input_cohort
  @talk = input_talk
  @favourite_language = input_favourite_language
end

def change_cohort(new_cohort)
  @cohort = new_cohort
end

def student_talk(student)
  return @talk
end

def favourite_language
  return "I love #{@favourite_language}!"
end



end
