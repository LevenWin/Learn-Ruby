def func1(a = 1, b = 2)
    puts "a = #{a}, b = #{b}"
end

func1 "12"
def sum(a, b)
    return a + b, a, b
end

$res1, $res2, $res3 = sum 1,12
puts "res1 = #$res1, res2 = #$res2, res3 = #$res3"


# 可变参数
def func2(*arr)
    puts "the length of params is #{arr.length}"
    for i in 0..arr.length
        puts "#{arr[i]}"
    end
end
func2 1,2,"@","5"