data = File.read('input3.txt').chomp.split("\n")
twoele = 0
threeele = 0
data.each do |line|
  mm = line.chars
  count_array = mm.map{|i| mm.count(i)}
  twoele+=1 if count_array.include? 2
  threeele+=1 if count_array.include? 3 
end
puts "#{twoele * threeele}"