module BookKeeping
    VERSION = 1
end

class Prime
    
    PRIME = 0
    COMP = 1
    
    @@marked = [0]
    @@primes = [2]
    @@n = 2
    @@max = 4
    
    def self.nth(n)
        @@n = n
        @@max = n * n
        @@primes = [2]
        @@marked = [0]
        list = primes
        list[list.length - 1]
    end
    
    def self.primes
        if @@n <= 1
            return [2]
        else
            return self.primes_rec 3
        end
    end
    
    def self.primes_rec(prime)
        @@primes.push(prime)
        
        # mark all multiples as composite
        $mult = prime * 2
        while $mult < @@max
            @@marked[$mult] = COMP
            $mult += prime
        end
        
        # find the next unmarked number (will be prime)
        while @@primes.length < @@n
            prime += 1
            if @@marked[prime] != COMP and prime % 2 != 0
                return self.primes_rec prime
            end
        end
        return @@primes # found them all
    end
end