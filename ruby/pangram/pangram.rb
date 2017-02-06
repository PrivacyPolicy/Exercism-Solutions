module BookKeeping
    VERSION = 3
end

class Pangram
    ASCII = 'abcdefghijklnopqrstuvwxyz'
    def self.pangram?(phrase)
        phrase = phrase.downcase
        for i in 0..(ASCII.length - 1)
            if not phrase.include?(ASCII[i])
                return false
            end
        end
        return true
    end
end