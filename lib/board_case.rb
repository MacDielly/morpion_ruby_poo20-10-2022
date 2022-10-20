#Classe Créant les nominations d'emplacements et les deux signes (X, O)
class BoardCase

    attr_accessor :cases, :sign

    def initialize(cases, sign)
        @cases = cases
        @sign = sign
    end

end