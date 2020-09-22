def diga_ola(nome) #método passando o nome como parâmetro
    puts 'Olá, ' + nome
end

diga_ola("Jander Cerqueira") #acionando o método

def retorna_nome #método simples retornando uma String
     'Jander' #informando a string
end

resultado = retorna_nome #chamando o método e adicionando a variável
puts resultado #imprime o resultado


def soma(v1, v2) #método com dois parâmetros
     total = v1 + v2 #soma dos parâmetros
     total #retorno do método 
end

res = soma(5,6) #chamando o método e adicionando a variável
puts res #imprime o resultado


