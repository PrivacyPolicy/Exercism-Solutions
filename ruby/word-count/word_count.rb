module BookKeeping
    VERSION = 1
end

class Phrase
    
    @@words
    @@counts = {}
    
    def self.new(str)
        @@counts = {}
        str = str.downcase.gsub(/[^a-z0-9']/, ' ')
        str = str.gsub(/'([a-z]+)'/, '\1')
        @@words = str.split(' ')
        self
    end
    def self.word_count
        for i in 0..(@@words.length - 1)
            if @@counts.key?(@@words[i])
                @@counts[@@words[i]] += 1
            else
                @@counts[@@words[i]] = 1
            end
        end
        @@counts
    end
end