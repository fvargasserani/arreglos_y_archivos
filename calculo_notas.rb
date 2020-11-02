def read_file(filename)
    original_data = open(filename).read.split(',')
    data = original_data.map { |x| Integer(x) rescue nil }
    n = data.size
    new_data = []
    n.times do |i|
        n2 = data[i].size
        n2.times do |j|
            if data[i][j].is_a?(Integer)
                new_data[i] << data[i][j]
            end
        end
    end  
end

def nota_mas_alta(data)
    n = data.size
    n.times do |i|
        n2 = data[i].size
        n2.times do |j|
            if data[i].is_a?(Array)
                puts data[i].max
            end
        end
    end
end  

data = read_file('notas.data')
puts nota_mas_alta(data[3])