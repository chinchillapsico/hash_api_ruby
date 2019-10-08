ventas = {
    Octubre: 65000,
    Noviembre: 68000,
    Diciembre: 72000
}
def filter(hash)
    filtered_hash = {}
    hash.each do |k,v|
        if v < 70000
        filtered_hash[k] = v
        end
    end
     print filtered_hash # Recordemos que la última línea es el retorno
end
    
filter(ventas)

# ruby  filtrar_hash.rb