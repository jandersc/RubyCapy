describe 'Drag and Drop', :dragdrop do #inicia a suite de teste com uma tag

    before(:each) do #método que será executado antes de cada caso de teste
        visit '/drag_and_drop' #acessar a página
        
    end

    it 'homem aranha pertence ao time Stark' do #cenário arrastar homem aranha para time stark
       
        stark = find('.team-stark .column') #seleciona a DIV do Team Stark e atribui a variável
        cap = find('.team-cap .column') #seleciona a DIV do Team CAP e atribui a variável
        spiderman = find('img[alt*=Aran]') #seleciona o elemento do homem aranha e atribui a variável

        spiderman.drag_to stark #arrasta o elemento homem aranha para a DIV Team Stark

        expect(stark).to have_css 'img[alt*=Aran]' #valida se o elemento homem aranha está na DIV Stark
        expect(cap).not_to have_css 'img[alt*=Aran]' #valida se o elemento homem aranha não está na DIV CAP

    end


    after(:each) do #método que será executado após cada caso.
        sleep 2 #aguarda 2 segundos só para verificar o resultado
    end

end