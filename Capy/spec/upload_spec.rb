describe 'Upload', :upload do #inicia a suite de teste com uma tag

    before(:each) do #método que será executado antes de cada caso de teste
        visit '/upload'
        @arquivo = Dir.pwd + '/spec/fixtures/arquivo.txt' #procura o arquivo e atribui a variável
        @imagem = Dir.pwd + '/spec/fixtures/imagem.jpg'
        
    end

    it 'upload com arquivo texto' do #inicia o cenário de de upload de arquivo
        attach_file('file-upload', @arquivo) #anexa o arquivo atribuido a variável
        click_button 'Upload' #clica no botão de upload

        div_arquivo = find('#uploaded-file') #procura a div e atribui a uma variável
        expect(div_arquivo.text).to eql 'arquivo.txt' #compara o texto da div com o nome do arquivo
    end

    it 'upload de imagem' do #inicia o cenário de de upload de imagem
        attach_file('file-upload', @imagem) #anexa o arquivo atribuido a variável
        click_button 'Upload' #clica no botão de upload

        img = find('#new-image') #procura o novo elemento e atribui a uma variável
        expect(img[:src]).to include '/uploads/imagem.jpg' #compara o src do elemento com o caminho da imagem (usando o include)
    end

    after(:each) do #método que será executado após cada caso.
        sleep 3 #aguarda 3 segundos
    end
end