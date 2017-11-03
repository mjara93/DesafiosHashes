personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edad = [32, 28, 41, 19]

def mezclar(hash1, hash2)
  hash = {}
  hash1.each_with_index do |v, i|
    hash[v.to_sym] = hash2[i]
  end
  return hash
end

personas_edad = mezclar(personas, edad)
 print "#{personas_edad}\n"

 def edades(hash)
   array = []
   hash.each do |key, value|
     array.push value
   end
   return array
 end

edades = edades(personas_edad)
print edades
