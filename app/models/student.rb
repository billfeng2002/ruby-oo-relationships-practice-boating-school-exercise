class Student
    @@all=[]
    def self.all
        @@all
    end
    def initialize(first_name)
        @first_name=first_name
        @@all << self
    end

    def add_boating_test(student, test_name, test_status, instructor)

    end

    def all_instructors

    end

    def grade_percentage

    end

    def self.find_student
    end


end
