class Show

    attr_accessor :final_table

    
#Affichage graphique du tableau
    def show_state(tab)
        @final_table = []
        @final_table = tab 
        puts
        puts
        puts
        puts
        puts"                    1        2        3"
        puts
        puts "             a      #{@final_table[0].sign}   |    #{@final_table[1].sign}   |   #{@final_table[2].sign}" 
        puts "                 -------------------------"
        puts "             b      #{@final_table[3].sign}   |    #{@final_table[4].sign}   |   #{@final_table[5].sign}"   
        puts "                 -------------------------"
        puts "             c      #{@final_table[6].sign}   |    #{@final_table[7].sign}   |   #{@final_table[8].sign}"   
        puts 
        puts 
        puts
        print "                  Press Enter to continue"
            temp = gets.chomp
            system("clear") if temp == ''
    end
end

