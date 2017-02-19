module BookKeeping
    VERSION = 2
end

class Fixnum
    
    E = 'E'
    I = 'I'
    V = 'V'
    X = 'X'
    L = 'L'
    C = 'C'
    D = 'D'
    M = 'M'
    
    @@conv = Array[
        [E],                   # 0
        [I, X, C, M],          # 1
        [I*2, X*2, C*2, M*2],  # 2
        [I*3, X*3, C*3, M*3],  # 3
        [I+V, X+L, C+D],       # 4
        [V, L, D],             # 5
        [V+I, L+X, D+C],       # 6
        [V+I*2, L+X*2, D+C*2], # 7
        [V+I*3, L+X*3, D+C*3], # 8
        [I+X, X+C, C+M],       # 9
        ]
    
    def to_roman
        str = self.to_s
        result = ''
        div = 1
        place = 1
        if self == 1
            return I
        end
        while self / div > 1
            div *= 10
            num = str[str.length - place].to_i
            result += @@conv[num][place - 1]
            place += 1
        end
        result
    end
end