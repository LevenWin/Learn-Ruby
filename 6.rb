# 类方法
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

def Fo.bar3
    p 'cc'
end

Fo.bar
Fo.bar2
Fo.bar3