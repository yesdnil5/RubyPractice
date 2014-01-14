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
puts boxes

boxes.sort! { |a,b| b.length*b.width <=> a.length*a.width }
puts boxes
