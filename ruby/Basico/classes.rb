# Ruby é uma linguagem considerada puramente orientada a objetos
# Porque no Ruby tudo é objeto


#Classe possui atributos e métodos
#Características e ações


#Carro (nome, marca, modelo, cor, quantidade de portas...)
# Ligar, buzinar, parar, etc...

class Carro
    attr_accessor :nome
    def ligar
        puts 'O carro está pronto para iniciar o trajeto.'
    end
end


civic = Carro.new
civic.nome = 'Civic'
#puts civic.class
puts civic.nome
civic.ligar