def decode_pin(instructions_set)
    pin_numbers = [[1,2,3],[4,5,6],[7,8,9]]
    instructions_set = instructions_set.split()
    i,j=1,1
    pin=""
    instructions_set.each do |instruction|
        instruction.split(//).each do |letter|
            case letter
            when "U"
                i-=1 if i-1>=0
            when "D"
                i+=1 if i+1<=2
            when "R"
                j+=1 if j+1<=2
            when "L"
                j-=1 if j-1>=0
            end
        end
        pin+=pin_numbers[i][j].to_s
    end
    return pin
end

#Paste the instructions into the variable below
set_of_instructions = "RLRLLLULULULUUDUULULRDDLURURDDLDUUDDLRDDUUUDD
LDLRLDDDLUDRDRRUDUURLRULLUDDRLURLUULDLLRLLUDLRLRUDLULRLRRL
LLRRDURRDLDULRDUDLRDRDRURULDU
DULRRDRLRLUDLLURURLLRLRDLLDLLDRDUURL
DUULULUUDUDLLRLRURULLDLRRLURDLLDUDUDDRURRLUDULULD"

pin = decode_pin(set_of_instructions)

puts pin


