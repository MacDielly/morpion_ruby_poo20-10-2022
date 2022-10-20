class Board

    attr_accessor :table, :turn

    def initialize
        @table = []
        # for x in "1".."3"
        #     for y in "a".."c"
                @table << BoardCase.new("a1", " ")
                @table << BoardCase.new("a2", " ")
                @table << BoardCase.new("a3", " ")
                @table << BoardCase.new("b1", " ")
                @table << BoardCase.new("b2", " ")
                @table << BoardCase.new("b3", " ")
                @table << BoardCase.new("c1", " ")
                @table << BoardCase.new("c2", " ")
                @table << BoardCase.new("c3", " ")
        #     end
        # end
        @turn = 0
    end

#Le joueur dont c'est le tour choisi une case à jouer 
    def play_turn(player_sign)
        puts "Quelle case souhaites tu cocher?"
        choose_case = gets.chomp
        @table.each do |i|
            if choose_case == i.cases
                i.sign = player_sign
            end
        end
        @turn = @turn + 1
    end

#Conditions de victoire
    def end?
        #Horizontale
        return 1 if @table[0].sign == "X" && @table[1].sign == "X" && @table[2].sign == "X"
        return 1 if @table[3].sign == "X" && @table[4].sign == "X" && @table[5].sign == "X"
        return 1 if @table[6].sign == "X" && @table[7].sign == "X" && @table[8].sign == "X"
        #Verticale
        return 1 if @table[0].sign == "X" && @table[3].sign == "X" && @table[6].sign == "X"
        return 1 if @table[1].sign == "X" && @table[4].sign == "X" && @table[7].sign == "X"
        return 1 if @table[2].sign == "X" && @table[5].sign == "X" && @table[8].sign == "X"
        #Diagonale
        return 1 if @table[0].sign == "X" && @table[4].sign == "X" && @table[8].sign == "X"
        return 1 if @table[2].sign == "X" && @table[4].sign == "X" && @table[6].sign == "X"
        #Horizontale
        return 2 if @table[0].sign == "O" && @table[1].sign == "O" && @table[2].sign == "O"
        return 2 if @table[3].sign == "O" && @table[4].sign == "O" && @table[5].sign == "O"
        return 2 if @table[6].sign == "O" && @table[7].sign == "O" && @table[8].sign == "O"
        #Verticale
        return 2 if @table[0].sign == "O" && @table[3].sign == "O" && @table[6].sign == "O"
        return 2 if @table[1].sign == "O" && @table[4].sign == "O" && @table[7].sign == "O"
        return 2 if @table[2].sign == "O" && @table[5].sign == "O" && @table[8].sign == "O"
        #Diagonale
        return 2 if @table[0].sign == "O" && @table[4].sign == "O" && @table[8].sign == "O"
        return 2 if @table[2].sign == "O" && @table[4].sign == "O" && @table[6].sign == "O"
        return 0 if @turn == 9
        return 3
    end

end