def quarters1(hash)
    quarters = {'Q1'=>0, 'Q2'=>1,'Q3'=>2,'Q4'=>3}
    ventas = []
    ventas = hash.values
    n = ventas.count / (quarters.count - 1)
    quarters_arreglo = []
    n.times do |x|
        quarters_arreglo.push(ventas.each_slice(3).to_a[x])
    end
    quarters.each do |k, v|
        quarters[k] = quarters_arreglo[v].sum
    end
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
print quarters1(ventas)