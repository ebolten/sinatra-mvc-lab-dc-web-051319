class PigLatinizer
    attr_reader :processed

    def piglatinize(sentence)
    words = sentence.split()
    
    result = words.collect do |word|
        if ["a","e","i","o","u","A","E","I","O","U"].include?(word[0])
            word+"way"
        else
        word = word.downcase
        to_remove = word.scan(/[^aeiouAEIOU]*/).first
        remaining_word = word[to_remove.length,word.length]
        remaining_word+to_remove+'ay'
        end
    end
        @processed = result.join(" ")
    end
end
