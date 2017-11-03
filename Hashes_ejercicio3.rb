inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}

eleccion = 0

while eleccion != 5
  puts "1) agregar item al inventario \n2) ver stock total \n3) ver item con mayor stock \n4) consultar si item existe \n5) salir"

  eleccion = gets.chomp.to_i

  if eleccion == 1
    puts 'agrege un item y su stock separado por coma:'
    str = gets.chomp
    b = str.split(',')
    inventario[b[0].to_sym.capitalize] = b[1].to_i
    print "#{inventario}\n"

  elsif eleccion == 2
    cont = 0
    inventario.each do |key, value|
      cont += value
    end
    puts "hay un stock total de #{cont}"

  elsif eleccion == 3
    cont = [' ',0]
    inventario.each do |key, value|
      if value > cont[1]
        cont[0] = key
        cont[1] = value
      end
    end
    puts "el producto #{cont[0]} es de mayor stock con #{cont[1]}"

  elsif eleccion == 4
    mensaje = 'no'
    puts 'ingrese el nombre del item a buscar:'
    item = gets.chomp.to_sym.capitalize
    if inventario.include?(item)
      mensaje = 'si'
    end
    puts mensaje
  end
end
