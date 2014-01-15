def create_hash(boxes)
	hash = {}
	puts boxes
	boxes.length.times do |k|
		i = k + 1
		arr = []
		while i < boxes.length
			if boxes[k].width >= boxes[i].width && 
				boxes[k].length >= boxes[i].length
				arr.push(boxes[i])
			end
			i+=1
		end
		hash[boxes[k]] = arr
	end
	return hash
end

Box = Struct.new(:length, :width, :height)
puts "please enter input"
number_boxes = gets.to_i
boxes = []
number_boxes.times do |k|
	line = gets.chomp
	dem = line.split(" ")
	box = Box.new
	box.length = dem[0].to_i
	box.width = dem[1].to_i
	box.height = dem[2].to_i
	boxes[k] = box
end

boxes.sort! { |a,b| b.length*b.width <=> a.length*a.width }

hash = create_hash(boxes)
puts hash
