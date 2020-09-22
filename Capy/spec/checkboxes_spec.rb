describe 'Caixas de Seleção', :meucheck do #inicia uma suite de testes com a tag

    before(:each) do #método que será executado antes de cada caso de teste
        visit '/checkboxes' #endereço para acesso
    end

    it 'marcando uma opção' do #Seleção simples utilizando o ID (pode ser usado também para name)
        check('thor') #usando o check (escolher) passando o id do checkbox
    end

    it 'desmarcando uma opção' do #Seleção simples utilizando o ID (pode ser usado também para name)
        uncheck('antman') #usando o uncheck passando o name do checkbox
    end

    it 'marcando com find set true' do #seleção quando o elemento não tem id e name
        find('input[value=cap]').set(true) #procura através do value e aciona o set
    end

    it 'desmarcando com find set false' do #seleção quando o elemento não tem id e name
        find('input[value=guardians]').set(false) #procura através do value e aciona o set
    end

    after(:each) do #método que será executado após cada caso.
        sleep 3 #aguarda 3 segundos
    end
end