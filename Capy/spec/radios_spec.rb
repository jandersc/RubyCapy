describe 'Botões de Radio', :meuradio do #inicia a suite de teste com uma tag

    before(:each) do #método que será executado antes de cada caso de teste
        visit '/radios' #endereço para acesso
    end

    it 'seleção por ID' do #Seleção simples utilizando o ID (pode ser usado também para name)
        choose('cap') #usando o choose (escolher) passando o id do radio
    end

    it 'seleção por find e css selector' do #seleção quando o elemento não tem id e name
        find('input[value=iron-man]').click #procura através do value e aciona o click
    end

    after(:each) do #método que será executado após cada caso.
        sleep 3 #aguarda 3 segundos
    end
end