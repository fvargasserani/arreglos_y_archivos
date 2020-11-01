def read_file(filename)
    original_data = open(filename).readlines
    original_data.split(',')
    data = original_data.map { |x| x.to_i rescue nil }
end

def nota_mas_alta(array)
n = array.size   
    n.times do |i|
        if array[i].is_a?(Integer)
        array.max
        end
    end
end

data = read_file('notas.data')

nota_mas_alta(data[0])
nota_mas_alta(data[1])