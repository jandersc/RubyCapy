class Veiculo
    attr_accessor :nome, :marca, :modelo

    def initialize(nome, marca, modelo)
    self.nome = nome
    self.marca = marca
    self.modelo = modelo
    end     

    def ligar
    puts "#{nome} está pronto para iniciar o trajeto!"
    end

    def buzinar
    puts 'Beep! Beep!'
    end
end

class Carro < Veiculo

    def dirigir
    puts "#{nome} iniciando o trajeto"
    end

end

class Moto < Veiculo
    
        def pilotar
        puts "#{nome} iniciando o trajeto"
        end
end

bravo = Carro.new('Bravo', 'Fiat', 'Sporting')
bravo.ligar
bravo.buzinar
bravo.dirigir

gol = Carro.new('Gol', 'VW', 'G6')
gol.ligar
gol.buzinar
gol.dirigir

bros = Moto.new('Bros', 'Honda', 'EX')
bros.ligar
bros.buzinar
bros.pilotar