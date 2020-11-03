def read_file(filename)
    require 'CSV'
    data = CSV.open(filename, converters: :numeric).readlines
end 
def nota_mas_alta(data)
n = data.size
new_data = []
    n.times do |i|
        if i > 0
            new_data << data[i].to_i
        end
    end 
    new_data.max
end

data = read_file('notasdata.csv')
puts nota_mas_alta(data[0])
puts nota_mas_alta(data[1])
