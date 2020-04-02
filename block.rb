
# a blcok refers to variables in context it was defined, not the context which it is called
def test2
    x = 100
    yield;yield;yield
    p "X  is #{x}"
end

# blocks are like closures, because they can refers to variables from their defining context;
def test1
    yield
    yield
    yield
end
# x = 5
# test2 {x += 1; p x}

def six_times(&block)
 
    block.call

    test1(&block)
    test1(&block)
end
x = 4
six_times {x += 10}
p "#{x}"

###

def test3(&block)
    @saved_block = block
end

test3 { p "niubi" }

p @saved_block
@saved_block.call


#### 真灵活。。。
block_tmp1 = Proc.new{|n = 2| p "temp block #{n}"}
block_tmp2 = proc {p "temp block2" }
block_tmp3 = lambda {p "temp block3"}
def some_method
    p "tmp block4"
end
block_tmp4 = method(:some_method)
block_tmp1.call(3)
block_tmp2.call(3)
block_tmp3.call()
result = block_tmp4.call()
p result + "21"


def f(block)
   return  block.call
end

def g
    result = f(Proc.new{return "value"})
    p "result = #{result}" # never excuted
end
p "g return #{g}"






    