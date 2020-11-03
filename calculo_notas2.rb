def read_file(filename)
    require 'CSV'
    data = CSV.open(filename, converters: :numeric).readlines
end 
def nota_mas_alta(data)
    n = data.count
    new_data = []
    highest_data = []
    n.times do |i|
        if i >= 0
            new_data = data[i].reject {|x| x.class == String}
            highest_data.push new_data.max
        end
    end
    highest_data
end

data = read_file('notasdata.csv')
print nota_mas_alta(data)