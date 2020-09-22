describe 'Forms', :forms do

    it 'login com sucesso' do

        visit '/login'
     
        fill_in 'userId', with: 'stark'
        fill_in 'passId', with: 'jarvis!'
        
        click_button 'Login'

        expect(find('#flash').visible?).to be true

        expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'

        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'

    end

    after(:each) do |e|#método que será executado após cada caso.
        nome = e.description.gsub(/[^A-Za-z0-9 ]/, '').tr(' ', '_')
        page.save_screenshot('log/' + nome + '.png')
    end

end