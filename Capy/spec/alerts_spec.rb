describe 'Alertas de JS', :alerts do #inicia a suite de teste com uma tag

    before(:each) do #método que será executado antes de cada caso de teste
        visit '/javascript_alerts' #endereço para acesso
    end

    it 'alerta' do 
        click_button 'Alerta'
        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'Isto é uma mensagem de alerta'
    end

    it 'sim confirma' do 
        click_button 'Confirma'

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'E ai confirma?'

        page.driver.browser.switch_to.alert.accept

        expect(page).to have_content 'Mensagem confirmada'
    end

    it 'não confirma' do 
        click_button 'Confirma'

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'E ai confirma?'

        page.driver.browser.switch_to.alert.dismiss

        expect(page).to have_content 'Mensagem não confirmada'
    end    

    it 'accept prompt' do
       
        accept_prompt(with: 'Jander') do
            click_button 'Prompt'
        end
        
        expect(page).to have_content 'Olá, Jander'
    end

    it 'dismiss prompt' do
       
        dismiss_prompt do
            click_button 'Prompt'
        end
        
        expect(page).to have_content 'Olá, null'
    end

    after(:each) do #método que será executado após cada caso.
        sleep 3 #aguarda 3 segundos
    end
end