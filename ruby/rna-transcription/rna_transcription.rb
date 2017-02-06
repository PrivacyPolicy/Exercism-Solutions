module BookKeeping
    VERSION = 4
end

class Complement
    DNA2RNA = {'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U'}
    def self.of_dna(strand)
        begin
            for i in 0..(strand.length - 1)
                strand[i] = DNA2RNA[strand[i]]
            end
            strand
        rescue TypeError
            ''
        end
    end
end