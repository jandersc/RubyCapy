describe 'Select2', :select2 do
    
    describe('single', :single) do
    
        before(:each) do #método que será executado antes de cada caso de teste
        visit '/apps/select2/single.html' #acessar a página
        end
        
        it 'seleciona ator por nome' do
            find('.select2-selection--single').click
            sleep 1
            find('.select2-results__option', text: 'Adam Sandler').click
            sleep 5
        end

        it 'busca e clica no ator' do
            find('.select2-selection--single').click
            sleep 1
            find('.select2-search__field').set 'Kevin James'
            sleep 1
            find('.select2-results__option').click
        end
    end

    describe('multiple', :multiple) do
    
        before(:each) do #método que será executado antes de cada caso de teste
        visit '/apps/select2/multi.html' #acessar a página
        end

        def selecione(ator)
            find('.select2-selection--multiple').click
            find('.select2-search__field').set ator
            find('.select2-results__option').click
        end

        it 'selecionar atores' do

            atores = ['Owen Wilson', 'Jim Carrey', 'Chris Rock']

            atores.each do |a|
                selecione(a)
            end  
              
            sleep 3
        
        end
    
    end

end