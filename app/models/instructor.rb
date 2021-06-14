class Instructor
  @@all = []
  def self.all
    @@all
  end

  attr_reader :name

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def passed_students
    BoatingTest.all.select { |test| (test.instructor == self) && (test.test_status == "passed") }
  end

  def pass_student(student, test_name)
    test = BoatingTest.all.find { |test| (test.instructor == self) && (test.test_name == test_name) && (test.student==student)}
    unless test == nil
      test.test_status = "passed"; return test
    end
    BoatingTest.new(student, test_name, "passed", self)
  end

  def fail_student(student, test_name)
    test = BoatingTest.all.find { |test| (test.instructor == self) && (test.test_name == test_name) && (test.student == student)}
    unless test == nil
      test.test_status = "failed"; return test
    end
    BoatingTest.new(student, test_name, "failed", self)
  end

  def all_students
    BoatingTest.all.select { |test| test.instructor == self }.map{|test| test.student}
  end
end
