module BookKeeping
    VERSION = 3
end

class Raindrops
    def self.convert(number)
        output = ''
        if number % 3 == 0
            output += 'Pling'
        end
        if number % 5 == 0
            output += 'Plang'
        end
        if number % 7 == 0
            output += 'Plong'
        end
        if output == ''
            return number.to_s
        else
            return output
        end
    end
end