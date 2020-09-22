class Conta #Criando a classe conta
    attr_accessor :saldo, :nome #criando os atributos da classe

    def initialize(nome) #inicializando os atributos
        self.saldo = 0.0
        self.nome = nome
    end

   def deposita(valor) #método para realizar deposito
    self.saldo += valor #saldo passa a ter o valor inicial mais o valor depositado
    puts 'Depositando a quantia de ' + valor.to_s + ' reais.' #imprime o valor depositado usando o to_s para converter
    puts "Depositando a quantia de #{valor} reais na conta de #{self.nome}"  #imprime o valor depositado usando o #{} para converter
   end
    
end

c = Conta.new('Jander Cerqueira') #instancia do uma nova classe com o nome como parâmetro 

puts "Bom dia #{c.nome}!" #imprime o nome passado como parâmetro

c.deposita(300.00) #chama o método com o valor como parâmetro
puts "O saldo da conta é: #{c.saldo} reais" #imprime o saldo atualizado

c.deposita(150.00) #chama o método com o valor como parâmetro
puts "O saldo da conta é: #{c.saldo} reais" #imprime o saldo atualizado