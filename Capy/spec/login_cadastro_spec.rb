describe 'Login com cadastro', :login3 do

    before(:each) do #método que será executado antes de cada caso de teste
        visit '/access' #endereço para acesso
    end

    it 'login com sucesso' do

        within('#login') do
            find('input[name=username]').set 'stark'
            find('input[name=password]').set 'jarvis!'
            click_button 'Entrar'
        end

        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
    end

    it 'cadastero com sucesso' do
        
        within('#signup') do
            find('input[name=username]').set 'Jander'
            find('input[name=password]').set '12345'
            click_link 'Criar Conta'
        end

        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
    end

    after(:each) do #método que será executado após cada caso.
        sleep 3 #aguarda 3 segundos
    end
end