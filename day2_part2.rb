
data = File.read('input3.txt').chomp.split("\n")
flag = false
 data.each do |x1|
 	data.each do |x2|
 		array1 = x1.chars
 		array2 = x2.chars
 		inter = []
 		count = array1.length
 		n = 0 
 		ans =0
 		while n < count
 			 if array1[n]!=array2[n]
 			 	ans+=1
 			 	inter.push(n)
 			 end
 			n+=1
 		end
       if ans == 1
       	mm = array2.reject.with_index{|e,i| inter.include? i }
       	mm = mm.join(',').gsub(/,/,"")
       	puts mm
       	flag = true
       end

 	end
 	break if flag
 end