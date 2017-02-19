module BookKeeping
    VERSION = 1
end

class Phrase
    
    @@words
    @@counts = {}
    
    def self.new(str)
        @@words = str.gsub(/[^A-Za-z]/, ' ').split(' ')
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