module BookKeeping
    VERSION = 3
end

class Hamming
    def self.compute(a, b)
        throw :ArgumentError if a.length != b.length
        
        distance = 0
        for i in 0..(a.length)
            if a[i] != b[i]
                distance += 1
            end
        end
        distance
    end
end