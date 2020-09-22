describe 'Ids Dinâmicos', :id do #criando a suite com uma tag

    before(:each) do #método que será executado antes de cada caso de teste
        visit '/access' #endereço para acesso
    end

    it 'cadastro' do #caso de teste
        find('input[id$=UsernameInput]').set 'Jander' #utilizando regex com $= para procurar o texto no final do elemento
        find('input[id^=PasswordInput]').set '123456' #utilizando regex com ^= para procurar o texto no inicio do elemento
        find('a[id*=GetStartedButton]').click #utilizando regex com *= para procurar o texto em qualquer lugar do elemento
        
        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!' #validando se na página tem a mensagem de cadastro com sucesso
    
    end

    after(:each) do #método que será executado após cada caso.
        sleep 3 #aguarda 3 segundos
    end
end

