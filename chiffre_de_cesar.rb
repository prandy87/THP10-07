
def is_letter(c)
    c =~ /[[:alpha:]]/
end

def is_lower(c)
    c >= 'a' && c <= 'z'
end
   
def is_upper(c)
    ! is_lower(c)
end


def chiffre_de_cesar(str, n)
    
    i = 0
    tmp = ""
    while str[i] do 
        if is_letter(str[i]) == 0 
            if is_upper(str[i])
                tmp[i] = ((str[i].ord) + n - 26).chr
            else
                tmp[i] = ((str[i].ord) + n % 26).chr
            end
        else
            tmp[i] = str[i]
        end
        i += 1
    end
    puts tmp          
end

chiffre_de_cesar("What a string!", 5)