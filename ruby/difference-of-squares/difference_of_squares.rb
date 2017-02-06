module BookKeeping
    VERSION = 3
end

class Squares
    
    def self.new(number)
        @@square_of_sum = 0
        @@sum_of_squares = 0
        self.new_rec number
    end
    
    def self.new_rec(number)
        if number <= 0
            @@square_of_sum = @@square_of_sum ** 2
            self
        else
            @@square_of_sum += number
            @@sum_of_squares += number ** 2
            self.new_rec number - 1
        end
    end
    
    def self.square_of_sum
        @@square_of_sum
    end
    
    def self.sum_of_squares
        @@sum_of_squares
    end
    
    def self.difference
        if @@square_of_sum < @@sum_of_squares
            @@sum_of_squares - @@square_of_sum
        else
            @@square_of_sum  - @@sum_of_squares
        end
    end
end