class Show

    attr_accessor :final_table

    
#Affichage graphique du tableau
    def show_state(tab)
        @final_table = []
        @final_table = tab 
        puts
        puts "   #{@final_table[0].sign}   |    #{@final_table[1].sign}   |   #{@final_table[2].sign}" 
        puts "----------------------------"
        puts "   #{@final_table[3].sign}   |    #{@final_table[4].sign}   |   #{@final_table[5].sign}"   
        puts "----------------------------"
        puts "   #{@final_table[6].sign}   |    #{@final_table[7].sign}   |   #{@final_table[8].sign}"   
        puts 
        puts "***********************************"
        puts
    end

end

