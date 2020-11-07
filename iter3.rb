def filter(hash, parametro)
    nuevo_hash = {}
    hash.each do |k, v|
        nuevo_hash[k] = v if v > parametro
    end
    nuevo_hash
end
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

filter(ventas, ARGV[0].to_i)