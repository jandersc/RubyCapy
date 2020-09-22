describe 'Tabelas', :tabelas do #criando a suite com uma tag

    before(:each) do #método que será executado antes de cada caso de teste
        visit '/tables' #endereço para acesso
    end


    it 'deve exibir o salário do tony stark' do #caso de teste
        atores = all('table tbody tr')
        stark = atores.detect { |ator| ator.text.include?('Robert Downey Jr') }
        expect(stark.text).to include '10.000.000' #validando se na página tem o texto
    end

    it 'deve exibir o salário do vin diesel' do #caso de teste
        diesel = find('table tbody tr', text: '@vindiesel') 
        expect(diesel).to have_content '10.000.000' #validando se na página tem o texto
    end

    it 'deve exibir o filme velozes' do #caso de teste
        diesel = find('table tbody tr', text: '@vindiesel')
        movie = diesel.all('td')[2].text
        expect(movie).to eql 'Velozes e Furiosos' #validando se na página tem o texto
    end

    it 'deve exibir o insta do chris evans' do #caso de teste
        evans = find('table tbody tr', text: 'Chris Evans')
        insta = evans.all('td')[4].text
        expect(insta).to eql '@teamcevans' #validando se na página tem o texto
    end

    it 'deve selecionar c pratt remocao' do #caso de teste
        pratt = find('table tbody tr', text: 'Chris Pratt')
        pratt.find('a', text: 'delete').click
        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'Chris Pratt foi selecionado para remoção!'

    end

    it 'deve selecionar c pratt edicao' do #caso de teste
        pratt = find('table tbody tr', text: 'Chris Pratt')
        pratt.find('a', text: 'edit').click
        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'Chris Pratt foi selecionado para edição!'

    end

end
