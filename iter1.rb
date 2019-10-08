ventas = {
Enero: 15000,
Febrero: 22000,
Marzo: 12000,
Abril: 17000,
Mayo: 81000,
Junio: 13000,
Julio: 21000,
Agosto: 41200,
Septiembre: 25000,
Octubre: 21500,
Noviembre: 91000,
Diciembre: 21000
}

ventas_altas ={}

ventas.each do |k,v|
    if v > 45000
        print v
        print " "
    end    
end 
print "\n"
ventas.each do |k,v|
    if v > 45000
        print k
        print " "
    end    
end    
=begin
 mostrar en pantalla todos los meses cuyas ventas sean superiores a 45000

# ruby iter1.rb
=end

