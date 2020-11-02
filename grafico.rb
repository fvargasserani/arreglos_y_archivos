def chart(array)
    n = array.size
    n.times do |i|
        print "|"
        (2 * array[i]).times do |i|
            print '*'
        end
    print "\n"
    end
end