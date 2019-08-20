describe 'Meu Primeiro Script' do
    it 'visitar a pagina' do
        visit 'https://training-wheels-protocol.herokuapp.com'
        puts page.title
    end    
end