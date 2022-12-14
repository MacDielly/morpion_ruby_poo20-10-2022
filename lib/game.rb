#Crée la continuité de la partie par l'enchainement des tours
class Game

    attr_accessor :players, :board, :current_player, :other_player

    def initialize(joueurs, board = Board.new)
        @players = joueurs
        @board = board

#Choix aléatoire du joueur qui commence la partie
        @current_player, @other_player = @players.shuffle
    end

#On choisi qui commence le tour 
    def turn(playersigne)
        x = 3
        while game_end(x) == false #Tant que la partie n'est pas terminée
            puts "\n\n                 C'est ton tour ==> #{@current_player.name}".colorize(:cyan) if @current_player.sign == playersigne
            puts "\n\n                 C'est ton tour ==> #{@other_player.name}".colorize(:cyan) if @other_player.sign == playersigne        
            @board.play_turn(playersigne) #Le joueur dont c'est le tour choisi une case à jouer 
            Show.new.show_state(@board.table) #Crée visuellement le tableau
            x = @board.end? #Vérifie la condition de fin de partie (retourne true ou false)
            if playersigne == "X" #Change de joueur (quand X a joué, au tour de O)
                playersigne = "O" 
            else
                playersigne = "X"
            end  
        end
        return x
    end

#Tant que la variable 3 est renvoyée, la partie continue
    def game_end(fin)
        return false if fin == 3
        return true
    end
end