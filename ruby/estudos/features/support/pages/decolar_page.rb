class AcessarPage

    include Capybara::DSL

    def go
        visit "http://www.decolar.com"
        sleep 2
    end


    def voos
        find('.header-products-container .button-circle-icon .shifu-3-icon-flights').click
        sleep 2
    end

    def reserva
        tags_origem = find("input[placeholder$='cidade de origem']").click 
        tags_origem.set "Aeroporto Internacional Guarulhos"
        sleep 2
        tags_origem.send_keys :tab
        tags_destino = find("input[placeholder$='cidade de destino']").click 
        tags_destino.set "Aeroporto Doha"
        sleep 2
        tags_destino.send_keys :tab
        tags_ida = find("input[placeholder$='Ida']").click 
        tags_ida.send_keys
    end

end
