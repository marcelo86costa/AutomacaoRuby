Dado("que eu acesse o site da Agência de Viagem") do
    @acessar_page = AcessarPage.new
    @acessar_page.go
end
  
  Quando("eu estiver na página de reserva de vôos") do
    @acessar_page.voos
  end
  
  Então("devo escolher destino e origem") do
    @acessar_page.reserva
  end