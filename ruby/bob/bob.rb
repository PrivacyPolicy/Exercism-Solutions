class Bob
    QUESTION = 'Sure.'
    YELL = 'Whoa, chill out!'
    SILENCE = 'Fine. Be that way!'
    DEFAULT = 'Whatever.'
    
    def self.hey(text)
        if text.scan(/[A-Z]/).size > text.scan(/[a-z]/).size
            return YELL
        elsif text[text.length - 1] == '?'
            return QUESTION
        elsif text.scan(/\s/).size == text.length
            return SILENCE
        else
            return DEFAULT
        end
    end
end