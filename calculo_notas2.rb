def read_file(filename)
    data = open(filename).read.chomp.split(',')
    new_data = []
    data.each do |i|
        data.each do |j|
            new_data << data[i][j].to_i
        end
    end  
    print new_data
end

def nota_mas_alta(array)
n = array.size
new_array = []  
    n.times do |i|
        new_array << array[i].max
    end
end

data = read_file('notas.data')

nota_mas_alta(data)