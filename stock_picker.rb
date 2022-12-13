def stock_picker(array)

    max_profit = array[1] - array[0]
    best_buy = 0
    best_sell = 1
    for buy in (0 .. array.length - 2)
        for sell in (buy + 1 .. array.length - 1)
            profit = array[sell] - array[buy]
            if profit > max_profit
                max_profit = profit
                best_buy = buy
                best_sell = sell
            end
        end
    end

    return [best_buy,best_sell]
end

p stock_picker([17,3,6,9,7,8,6,1,10])