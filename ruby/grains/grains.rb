module BookKeeping
    VERSION = 1
end

class Grains
    
    @@squares = Array.new(64, 0)
    @@squares[0] = 1
    
    def self.square(n)
        n -= 1
        i = 1
        while i < n
            if @@squares[i] == 0
                @@squares[i] = @@squares[i - 1] * 2
            end
        end
        @@squares[n]
    end
    
    def self.total
        square(64)
        sum = 0
        for i in 0..(@@squares.length - 1)
            sum += @@squares[i]
        end
        sum
    end
    
end