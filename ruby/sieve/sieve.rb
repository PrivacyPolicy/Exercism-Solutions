module BookKeeping
    VERSION = 1
end

class Sieve
    
    PRIME = 0
    COMP = 1
    
    @@range = [2, 2]
    @@marked = [0]
    @@primes = [2]
    
    def self.new(max)
        @@range = [2, max]
        @@marked = Array.new(max - 1, 0)
        @@primes = [2]
        self
    end
    
    def self.primes
        if @@range[1] < 2
            return []
        else
            return self.primes_rec 3
        end
    end
    
    def self.primes_rec(prime)
        @@primes.add(prime)
        
        # mark all multiples as composite
        mult = primes * 2
        while mult < @@range[1]
            @@marked[mult] = COMP
            mult += primes
        end
        
        # find the next unmarked number (will be prime)
        while prime < @@range[1]
            prime += 1
            if @@marked[prime] != COMP
                return self.primes_rec prime
            end
        end
        return @@primes # found them all
    end
end