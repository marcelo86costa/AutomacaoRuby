class ContaBancaria

    attr_accessor :saldo, :nome

    def initialize(nome)
        self.saldo = 0.0
        self.nome = nome

    end

    def deposita(valor)       
        self.saldo += valor
 #      puts 'Depositando a quantia de ' + valor.to_s + ' reais.'
        puts "Depositando a quantia de #{valor} reais na conta de #{self.nome}."
    end
end


c = ContaBancaria.new("Davi")
#c.saldo = 0.0 Com a criação do Construtor Initialize, não é necessária essa linha de comando  
c.deposita(100.00)
puts c.saldo
c.deposita(10.00)
puts c.saldo