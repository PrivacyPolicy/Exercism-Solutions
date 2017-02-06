module BookKeeping
    VERSION = 3
end

class Squares
    
    @@square_of_sum = 0
    @@sum_of_squares = 0
    
    def self.new(number)
        if number <= 0
            @@square_of_sum = @@square_of_sum ** 2
            self
        else
            @@square_of_sum += number
            @@sum_of_squares += number ** 2
            self.new number - 1
        end
    end
    
    def self.square_of_sum
        @@square_of_sum
    end
    
    def self.sum_of_squares
        @@sum_of_squares
    end
    
    def self.difference
        @@sum_of_squares - @@square_of_sum
    end
end