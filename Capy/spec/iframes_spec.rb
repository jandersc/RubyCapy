describe 'Iframes', :iframes do #criando a suite com uma tag

    describe 'bom', :nice_iframe do

        before(:each) do #método que será executado antes de cada caso de teste
            visit '/nice_iframe' #endereço para acesso
        end

        it 'adicionar ao carrinho' do #caso de teste
            
            within_frame('burgerId') do #usando o within_frame para manipular os dados dentro do iframe
                produto = find('.menu-item-info-box', text: 'REFRIGERANTE') #atribui a variável o elemento da class que tem o tituilo REFRIGERANTE
                produto.find('a').click #clica no link de add ao carrinho
                expect(find('#cart')).to have_content 'R$ 4,50' #compara se o valor do refrigerante está no carrinho
            end 
        
        end
    
        after(:each) do #método que será executado após cada caso.
            sleep 3 #aguarda 3 segundos
        end

    end

    describe 'ruim', :bad_iframe do #nesse caso o iframe não tem a ID

        before(:each) do #método que será executado antes de cada caso de teste
            visit '/bad_iframe' #endereço para acesso
        end

        it 'carrinho deve estar vazio' do #caso de teste
            
            script = '$(".box-iframe").attr("id", "tempID");' #atribui a variável um scrip de jquery para criar um id temporário no iframe
            page.execute_script(script) #executa o jquery

            within_frame('tempID') do #usando o within_frame para manipular os dados dentro do iframe com o ID temporário
                expect(find('#cart')).to have_content 'Seu carrinho está vazio!' #verifica se o carrinho está vazio
            end 
        
        end
    
        after(:each) do #método que será executado após cada caso.
            sleep 3 #aguarda 3 segundos
        end

    end

end