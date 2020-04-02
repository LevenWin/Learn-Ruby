require './6'
module M
    extend ITest
    def test_method
        puts 'this is test'
    end
end
class A
    extend M
end

class B
    include M
end
