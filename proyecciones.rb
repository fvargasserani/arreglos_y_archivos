def read_file(filename)
    original_data = open('ventas_base.db').readlines
    data = original_data.map { |x| Float(x) rescue nil }
end

data = read_file('ventas_base.db')
n = data.count    
filtered_data = []
n.times do |i|
    if data[i].is_a?(Float)
        filtered_data << data[i]
    end
end

sum_1 = 0
sum_2 = 0
filtered_data.each do |i|
    if data[i] <= 5
        sum_1 += (i * 1.1)
    else
        sum_2 += (i * 1.2)
    end
end

File.write('resultados.data',sum_1,sum_2)