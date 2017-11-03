
# Crear el array de hashes y pobarlo con al menos 8 personas:
hash = [{'josefa':['josefa','chile','america','femenino']},{'Jose':['Jose','chile','america','masculino']},{'paula':['paula','argentina','america','femenino']},{'ignacio':['ignacio','colombia','america','masculino']},{'karla':['karla','italia','europa','masculino']},{'andres':['andres','inglaterra','europa','masculino']},{'amanda':['amanda','suecia','europa','femenino']},{'helga':['helga','holanda','europa','femenino']}]

# Contar la cantidad de personas de la lista.
puts datos.length

# Generar un array con cada continente, eliminar repeticiones, considerar que pueden haber nombres escritos con mayúscula y minúscula.
def continente(hash)
  continentes = []
 hash.each do |x|
   x.each do |b, c|
     continentes.push c[2]
   end
 end
continentes.uniq
end
continentes = continente(hash)
print "#{continentes}\n"

# Generar una lista con todas las personas llamadas josefa
def josefas(hash)
  josefa = {}
  hash.each do |x|
    x.each do |z, y|
      if y[0] == 'josefa'
        josefa[z] = y
      end
    end
  end
  rodolfos
end

josefa = josefas(hash)
print "#{josefa}\n"
# Hacer dos listas de personas, una por cada género
def genero(hash)
  genero = []
  masculino = {}
  femenino = {}
  hash.each do |x|
    x.each do |b, c|
      if c[3] == 'masculino'
        masculino[b] = c
      elsif c[3] == 'femenino'
        femenino[b] = c
      end
    end
  end
  genero.push masculino
  genero.push femenino
  return genero
end

generos = genero(hash)
print "#{generos}\n"
# Armar un hash, donde cada clave sea un continente yel value un array con los países de cada continente.
def clave_continentes(hash)
  continentes = continentes(hash)
  dato1 = []
  dato2 = []
  hash.each do |x|
    x.each do |key, value|
      if value[2] == continentes[0]
        dato1.push value[1]
      elsif value[2] == continentes[1]
        dato2.push value[1]
      end
    end
  end

  hash = {}

  hash[continentes[0]] = dato1.uniq
  hash[continentes[1]] = dato2.uniq

  return hash
end

clave = clave_continentes(hash)
print "#{clave}\n"
