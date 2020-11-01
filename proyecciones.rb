def read_file(filename)
    original_data = open(filename).readlines
    data = original_data.map { |x| Float(x) rescue nil }
    n = data.size   
    filtered_data = []
    n.times do |i|
        if data[i].is_a?(Float)
            filtered_data << data[i]
        end
    end
end

data = read_file('ventas_base.db')
n = data.size
sum_1 = 0
sum_2 = 0
n.times do |i|
    if i <= 5
        sum_1 += (data[i] * 1.1)
    else
        sum_2 += (data[i] * 1.2)
    end
end

File.write('resultados.data',sum_1,sum_2)