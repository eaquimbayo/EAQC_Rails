def mi_metodo
    mensaje = "hola metodo "
    numero = 1
    mensaje + numero.to_s
end

puts mi_metodo


def otro_metodo(parametro, *parametros)
    p parametro
    p parametros
end

otro_metodo("esto es un param", 1, 5, "otro valor")

def login(usuario:, password:password)
    puts usuario
    puts password
    end

    login(password:"contraseña",  usuario: "efra")