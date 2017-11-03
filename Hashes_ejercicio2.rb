# Escribir un hash con el menu de un restaurant, la llave es
# el nombre del plato y el valor es el precio de este.
# restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
# 1. Obtener el plato mas caro
# 2. Obtener el plato mas barato
# 3. Sacar el promedio del valor de los platos
# 4. Crear un arreglo con solo los nombres de los platos
# 5. Crear un arreglo con solo los valores de los platos
# 6. Modificar el hash y agregar el IVA a los valores de los platos
# (multiplicar por 1.19).
# 7. Dar descuento del 20% para los platos que tengan unnombre de mas 1
# una palabra.

restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

def mas_caro(hash)
  b = [0, 0]
  hash.each do |key, value|
    if value > b[1]
      b[0] = key
      b[1] = value
    end
  end
  puts "#{b[0]} => #{b[1]}; es el plato mas caro"
end

mas_caro(restaurant_menu)

def mas_barato(hash)
  b = [0, 0]
  hash.each do |key, value|
    if b[0] == 0
      b[0] = key
      b[1] = value
    elsif value < b[1]
      b[0] = key
      b[1] = value
    end
  end
  puts "#{b[0]} => #{b[1]}; es el plato mas barato"
end

mas_barato(restaurant_menu)

def promedio(hash)
  cont = 0
  hash.each do |key, value|
    cont += value
  end
  puts "el promedio es #{cont.to_f/hash.length}"
end

promedio(restaurant_menu)

def arreglos(hash)
  plato = []
  precio = []
  hash.each do |key, value|
    plato.push key
    precio.push value
  end
  print "#{plato}\n"
  print "#{precio}\n"
end

arreglos(restaurant_menu)

restaurant_menu.each do |key, value|
  restaurant_menu[key] = value * 1.19
end

print "#{restaurant_menu}\n"

restaurant_menu.each do |key, value|
  a = key.split(' ')
  if a.length > 1
    restaurant_menu[key] = value * 0.8
  end
end

print restaurant_menu
