module BookKeeping
    VERSION = 5
end

class Gigasecond
    def self.from(birthDateTime)
        birthDateTime += 10**9
    end
end