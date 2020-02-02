
# def test
#     puts "this is in func"
#     yield 1,2
#     puts "back in func"
#     yield 2,3
# end

# test { |i, j| puts "this is in block #{i}, #{j}" }

BEGIN {
    puts "code begin"
}

END {
    puts "code end"
}
def test1(&block)
    puts block
    puts "this is in func"
    block.call 1
    puts "back in func"
    block.call 2
end
test1 { |i| puts "this is in block #{i}" }

