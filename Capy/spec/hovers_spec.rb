describe 'Mouse Hover', :hovers do #inicia a suite de teste com uma tag

    before(:each) do #método que será executado antes de cada caso de teste
        visit '/hovers' #acessar a página
        
    end

    it 'quando passo o mouse sobre o card Blade' do #cenário para o card Blade
        card = find('img[alt=Blade]') #atribui a variável card o find do elemento "alt=Blade"
        card.hover #funcionalidade que simula o mouse passando sobre o elemento

        expect(page).to have_content 'Nome: Blade' #verifica se na página contém o texto.
    end

    it 'quando passo o mouse sobre o card Pantera Negra' do #cenário para o card Pantera Negra
        #card = find('img["alt=Pantera Negra"]') #atribui a variável card o find do elemento "alt=Pantera Negra", aspas dupla pq o elemento tem espaço(vale para qualquer carctere especial)
        card = find('img[alt^=Pantera]') #atribui a variável card o find do elemento "alt=Pantera Negra", usando ^= para buscar o elemento com inicio da palavra
        card.hover #funcionalidade que simula o mouse passando sobre o elemento

        expect(page).to have_content 'Nome: Pantera Negra' #verifica se na página contém o texto.
    end

    it 'quando passo o mouse sobre o card Homem Aranha' do #cenário para o card Homem Aranha
        card = find('img[alt*=Aran]') #atribui a variável card o find do elemento, *= para buscar o elemento que contém a palavra 
        card.hover #funcionalidade que simula o mouse passando sobre o elemento

        expect(page).to have_content 'Nome: Homem Aranha' #verifica se na página contém o texto.
    end

    after(:each) do #método que será executado após cada caso.
        sleep 2 #aguarda 2 segundos só para verificar o resultado
    end

end