
# 利用module实现多继承
module A
    def a1
        puts "this is A::a1"
    end
end

module B
    def b1
        puts "this is B::b1"
    end
end

class TestClass
include A
include B
    def test
        puts "this is test method"
    end    
end

samp = TestClass.new
samp.test
samp.a1
samp.b1