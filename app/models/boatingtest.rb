class BoatingTest
    @@all = []
    def self.all
        @@all
    end

    attr_reader :student, :test_name, :instructor
    attr_accessor :test_status
    def initialize(student, test_name, test_status, instructor)
        @student=student
        @test_name= test_name
        @test_status=test_status
        @instructor=instructor
    
        self.class.all << self
    end
end
