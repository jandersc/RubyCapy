numero1 = 0 
numero2 = 0
total = 0 #inicia as variáveis com zero

puts 'Digite o 1º número' #imprime a mensagem para digitar um valor
numero1 = gets.chomp.to_i #captura o valor inserido no console

puts 'Digite o 2º número' #imprime a mensagem para digitar um valor
numero2 = gets.chomp.to_i #captura o valor inserido no console

#total = numero1 + numero2
#total = numero1 - numero2
#total = numero1 * numero2
total = numero1 / numero2 #realiza as operações (nesse caso dividir)

puts 'O resultado é:' 
puts total #imprime o resultado da operação

#puts total>numero1
#puts total != numero1

puts total.eql?(numero1) #boleano para verificar se o total é igual ao primeiro número digitado






