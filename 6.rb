module M
    def self.included(other)
        p "#{other} included #{self}"
    end
    class Fo
        def self.bar
            p "aa"
        end
        class << self
            def bar2
                p 'bb'
            end
        end
    end
    def bar
        p "00"
    end
    
    def Fo.bar3
        p 'cc'
    end    
end

# M::Fo.bar
# M::Fo.bar2
# M::Fo.bar3