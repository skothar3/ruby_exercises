L_letters = ("a".."z").to_a
U_letters = ("A".."Z").to_a

def caesar_cipher(str,shift)
    str.gsub!(/[A-Za-z]/) {|s| s = convert_shifted_letter(s,shift)}
end

def convert_shifted_letter(chr,shift)

    if chr.match?(/[A-Z]/)
        letter_ind = U_letters.index(chr)
        shifted_ind = letter_ind + shift
        if shifted_ind > 25
            shifted_ind = shifted_ind - 26
        end
        return U_letters[shifted_ind]
    else
        letter_ind = L_letters.index(chr)
        shifted_ind = letter_ind + shift
        if shifted_ind > 25
            shifted_ind = shifted_ind - 26
        end
        return L_letters[shifted_ind]
    end 

end
# puts convert_shifted_letter('w',5)
puts caesar_cipher("What a string!", 5)