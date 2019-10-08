nombres = ['Alumno1', 'Alumno2', 'Alumno3']
notas = [10, 3, 8]
hash = {}
nombres.each do |nombre|
    i = nombres.index(nombre) # obtenemos el índice
    nota = notas[i]
    hash[nombre] = nota
end
puts hash


puts nombres.zip(notas).to_h 

 puts [1, 2, 3, 4, 5, 6, 7, 8] .group_by{ |x| x.even? } #pares


puts ['a', 'ab', 'abc', 'b', 'bc', 'bcd'].group_by { |x| x[0] } # Por la primera letra
#Para resolver el problema iteraremos el arreglo, cada vez que encontremos un elemento nuevo lo
#guardaremos en un hash con la cuenta en uno, y si encontramos un elemento que ya está dentro
#del hash lo incrementamos en uno.

# Los agrupamos
grouped = [1, 2, 6, 7, 2, 5, 8, 9, 1, 3, 6, 7] .group_by {|x| x}
# => {1=>[1, 1], 2=>[2, 2], 6=>[6, 6], 7=>[7, 7], 5=>[5], 8=>[8], 9=>[9], 3=>[3]}
#Luego remplazamos el valor por la cuenta
grouped.each do |k,v|
    grouped[k] = v.count
    puts grouped
end
# ruby alumno_nota.rb