require './6'
module M
    def self.included(other)
        p "hahah"
    end
    def test_method
        puts 'this is test'
    end
    def M.extended(other)
        p "i am extended by #{other}"
    end
end

def M.included(other)
    p "i am included by #{other}"
end

class A
    extend M
end

class B
    include M
end

M::Fo.bar
B.new.bar
