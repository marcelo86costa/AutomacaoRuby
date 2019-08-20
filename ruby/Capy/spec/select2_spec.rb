describe 'Select2', :select2 do

    describe('single', :single) do
        before(:each) do
            visit 'https://training-wheels-protocol.herokuapp.com/apps/select2/single.html'
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
            find('.select2-search__field').set 'Chris Rock'
            sleep 1
            find('.select2-results__option').click
            sleep 5
        end
    end    

    describe('multiple', :multiple) do
        before(:each) do
            visit 'https://training-wheels-protocol.herokuapp.com/apps/select2/multi.html'
        end
    
        def selecione(ator)
            find('.select2-selection--multiple').click
            find('.select2-search__field').set ator
            find('.select2-results__option').click
        end
        
        it 'selecionar atores' do
            # find('.select2-selection--multiple').click
            # sleep 1
            # find('.select2-search__field').set 'Jim Carrey'
            # find('.select2-results__options').click
            # sleep 5
            # Inicialmente o bloco acima foi utilizado dessa maneira, mas utilizado na func selecione

            # O bloco abaixo foi substituído pelo array e então percorrido todo o array
            # selecione('Jim Carrey')
            # selecione('Owen Wilson')        
            # sleep 2
            atores = ['Jim Carrey', 'Owen Wilson', 'Chris Rock', 'Kevin James']

            atores.each do |a|
                selecione(a)
            end
            sleep 3
        end

    end

end
