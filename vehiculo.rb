class Vehiculo
    attr_accessor :marca, :modelo
    # attr_reader :marca
    def initialize (marca, modelo)
        @marca= marca
        @modelo = modelo
    end

    # def marca
    #     @marca
    #     end

    #     def marca=(value)
    #         @marca=value
    #         end
end

carro = Vehiculo.new("mazda", 2018)
carro.marca = "BMW"
puts carro.marca