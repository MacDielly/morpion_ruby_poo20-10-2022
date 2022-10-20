#Classe contenant le fonctionnement d'un joueur
class Player

    attr_accessor :name, :sign

#Initialisation des informations joueurs
    def initialize(name, sign)
        @name = name
        @sign = sign
    end
end