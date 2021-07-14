def caesar_cipher (message, shift = 0)
    encrypt = ""
    message.each_char do |i|
        if i.ord.between?(65,90) || i.ord.between?(97,122)
            new = i.ord + shift
            if (new > 90 && i.ord < 90) || new > 122
                new -= 26
            end
            encrypt += new.chr
        else 
            encrypt += i
        end
    end
    encrypt
end

puts (caesar_cipher('This is a project from The Odin Project', 7))