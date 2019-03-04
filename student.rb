class Student
  attr_accessor :name, :cohort
  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  # def student_talk(input)
  #   h1 = { "speech" => input }
  #   returns student.merge(h1)
  # end

  def gets_student_to_talk
    return "I can talk"
  end

  def say_favourite_language(favourite_language)
    return "I love #{favourite_language}"
  end
end
