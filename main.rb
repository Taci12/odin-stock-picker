prices_array = [17,3,6,9,15,8,6,1,10]

def stock_picker(array)
    indexes = []
    max_profit = 0
    array.each_with_index do |price1, index1|

        array.each_with_index do |price2, index2|
            #checks if a new candidate to max profit
            #has been found. 
            if (index2 > index1)
                profit = price2 - price1
                if (profit > max_profit)
                    max_profit = profit
                    indexes[0] = index1
                    indexes[1] = index2
                end
            end

        end
    end
    return indexes
end

p stock_picker(prices_array)