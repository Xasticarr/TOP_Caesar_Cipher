def caesar_cipher (string, shift_factor = 0)
    result = ""
    string.each_char do |character|
        if character.ord.between?(65, 90) || character.ord.between?(97, 122)
            code = character.ord + shift_factor

            code -= 26 if (code > 91 && character.ord < 91) || code > 122
            result += code.chr
        else
            result += character
        end
    end
    result
end

puts caesar_cipher("Now this is Pod Racing!", 5)

