class  Persona
    attr_accessor :nombre, :apellido
    def initialize (nombre)
        @nombre = nombre
    end
    def hablar
        puts "#{@nombre} dice: hola"
    end
end

class Hombre < Persona
    def initialize(nombre)
        super
        end
        
    def hablar
            super
            puts "la persona dice"        
        end
        end

yo=Persona.new ("efra")
yo.hablar