def proc_method(&block)
    p block
    block.call("leven","nihao")
end
proc_method {|n| p "hello #{n}"}

def method
    p "reach the top"
    yield "hahah"
    p "reach the bottom"
end

method do |n|
    p "reach yield #{n}"
end

[1,2,3].each do |n|
    p "#{n}" 
end

[1,2,3,].each {|n| p "#{n}"}

