10.times do |i| #repetição usando o times
     puts 'Repetição da mensagem ' +i.to_s+ ' vez(es)' 
end


init = 0
while init <= 10 do #repetição usando o while
     puts 'Repetição da mensagem ' +init.to_s+ ' vez(es)' 
     init += 1
end


for item in (0...10) #repetição usando for
     puts 'Repetição da mensagem ' +item.to_s+ ' vez(es)'
end


vingadores = ['Homem de Ferro', 'Capitao America', 'Pantera Negra', 'Viuva Negra'] #array com valores
vingadores.each do |v| #leitura do array e atribuindo a variável
 puts v #imprime a variável
end