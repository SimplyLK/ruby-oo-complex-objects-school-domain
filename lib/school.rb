class School
    attr_accessor :roster
    def initialize(name, roster = {})
        @name = name
        @roster = roster
    end

    def name
        @name
    end

    def add_student(student,grade)
        # if self.roster.key?(grade)
        #     self.roster[grade] << student
        # else
        #     self.roster[grade] = []
        #     self.roster[grade] << student
        # end
        self.roster[grade] ||= []
        self.roster[grade] << student
    end

    def grade(grade)
        self.roster[grade]
    end
    def sort
        roster.each do |grade, student|
            roster[grade]=student.sort
        end
    end
end

# School.new("Bayside High School")