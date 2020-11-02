def proyecciones(filename, ai, af, multiplicador)
    original_data = open(filename).read.chomp.split(',')
    data = original_data.map { |x| x.to_i }
    new_data = []
    n = data.count
    n.times do |i|
        if i >= ai && i <= af
            new_data << (data[i] * multiplicador)
        else
            new_data << data[i]
        end
    end
    total_sales = new_data.sum
    total_sales_2float = []
    total_sales_2float << '%0.2f'%total_sales
end

year_sales = proyecciones('ventas_base.db', 0, 5, 1.1) + proyecciones('ventas_base.db', 6, 11, 1.2)

File.write('resultados.data', year_sales.join("\n"))