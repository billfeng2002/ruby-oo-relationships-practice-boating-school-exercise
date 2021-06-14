class Student
    @@all=[]
    attr_reader :name
    def self.all
        @@all
    end
    def initialize(first_name)
        @name=first_name
        @@all << self
    end

    def add_boating_test(test_name, test_status, instructor)
        BoatingTest.new(self, test_name, test_status, instructor)
    end

    def all_instructors
        self.get_tests.map{|test|test.instructor}
    end

    def get_tests
        BoatingTest.all.select{|test| test.student==self}
    end
    def grade_percentage
        self.get_tests.count{|test|test.test_status=="passed"}.to_f/self.get_tests.count * 100
    end

    def self.find_student(name)
        self.all.find{|student| student.name==name}
    end

end
