class Hamming
    def self.compute(a, b)
        distance = 0
        for i in 0..(a.length)
            if a[i] != b[i]
                distance += 1
            end
        end
        distance
    end
end