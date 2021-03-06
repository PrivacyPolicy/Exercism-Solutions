module BookKeeping
    VERSION = 2
end

class Robot
    
    @@name = ''
    
    def self.new
        reset
        self
    end
    
    def self.name
        @@name
    end
    
    def self.reset
        rand = Random.new_seed
        a = rand % 26 + 65
        b = (rand / 10) % 26 + 65
        c = rand % 1000
        @@name = a.chr + b.chr + c.to_s.ljust(3, '0')
    end
end