# begin
#     #Devo tentar alguma coisa
#     file = File.open("./ola")
#     if file
#         puts file.read
#     end
# rescue Exception => e
#     #Vou obter um possível erro
#     puts e.message    
#     puts e.backtrace
# end


def soma(n1,n2)
    n1 + n2
rescue Exception => e
    puts e.message
    puts "Erro ao efetuar a soma."
end

soma("10", 9)