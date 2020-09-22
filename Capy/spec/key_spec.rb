describe 'Teclado', :key do #inicia a suite de teste com uma tag

    before(:each) do #método que será executado antes de cada caso de teste
        visit '/key_presses' #endereço para acesso
    end

    it 'enviando teclas' do #caso de teste enviando simbolos simulando o teclado
        teclas = %i[tab space escape enter shift control alt] #array com %i para simbolos

        teclas.each do |t| #lendo o array e atribuindo a varável t
            find('#campo-id').send_keys t #localizando o elemento através do #id
            expect(page).to have_content 'You entered: ' + t.to_s.upcase #expect com have_content para encontrar um elemento na página (to_s para converter em String e upcase para deixar em letra maiuscula)
            sleep 1 #sleep só para visualizar as ações na tela 
        end
          
    end

    it 'enviando letras' do #caso de teste enviando letras simulando o teclado
        letras = %w[z x c v b n m] #array com %w para String

        letras.each do |l| #lendo o array e atribuindo a varável l
            find('#campo-id').send_keys l #localizando o elemento através do #id
            expect(page).to have_content 'You entered: ' + l.upcase #expect com have_content para encontrar um elemento na página (upcase para deixar em letra maiuscula)
            sleep 1 #sleep só para visualizar as ações na tela 
        end
          
    end


    after(:each) do #método que será executado após cada caso.
        sleep 3 #aguarda 3 segundos
    end
end