class PigLatinizer
    attr_accessor :word

    def piglatinize
    words = word.split
    result = @words.collect do |word|
        word = words.downcase
        to_remove = word.scan(/[^aeiouAEIOU]*/).first
        remaining_word = word.split(to_remove).last
        remaining_word+to_remove+'ay'
    end
        return result.join(" ")
    end
end
