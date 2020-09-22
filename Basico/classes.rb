class Carro #criação da classe Carro
    
    attr_accessor :nome #atributo nome vinculada a classe

    def ligar #iniciando o método ligar
        puts 'O carro está ligado...' #imprime na tela a ação do método
    end 
end

bravo = Carro.new #nova instancia de carro
bravo.nome = 'Bravo Sporting' #novo valor para o atributo

puts bravo.nome #imprime o conteúdo atribuido no console

bravo.ligar #inicia o método ligar