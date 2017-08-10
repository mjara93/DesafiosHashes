# Dado el hash = {"x": 1, "y":2}
# Agregar el texto z con el valor 3
# Cambiar el valor de x por 5
# Eliminar la clave y
# Si el hash tiene una clave llamada z mostrar en pantalla "yeeah"
# Invertir el diccionario de forma que los valores sean las llaves y
# las llaves los valores
# ejemplo: x = {"a":"hola" } se transforme en
# {"hola": "a"}

hash = {x: 1, y: 2}
#agregando z
hash[:z] = 3
#modificando x
hash[:x] = 5
#borrando y
hash.delete(:y)

print "#{hash}\n"
#mostrar yeeah
puts "yeeah" if hash.include?(:z) == true

def invertir(hash)
  b = {}
  hash.each do |key, value|
    b[value.to_s] = key.to_s
  end
  return b
end

hash = invertir(hash)
puts "#{hash}"
