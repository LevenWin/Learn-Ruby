s1 = %Q{我去，你真有意思\"",niybi \a, \a}
puts s1

s2 = %Q{fDF,AdFF}
puts s2.swapcase!
puts s2.split(",")

nums = Array.new(20) {|i| i = i * 2}
puts "#{nums}"
puts "#{nums.at(2)}"
nums << "ok"
puts "#{nums}"
