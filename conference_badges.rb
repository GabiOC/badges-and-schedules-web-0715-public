# Write your code here.

def badge_maker(name)
	"Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
	badges = []
	attendees.each do |x|
		badges << badge_maker(x)
	end
	badges
end

def assign_rooms(attendees)
	messages = []
	attendees.each_with_index do |name, index|
		messages << "Hello, #{name}! You'll be assigned to room #{index+1}!"
	end
	messages
end

def printer(attendees)
	batch_badge_creator(attendees).each do |badge|
		puts badge
	end

	assign_rooms(attendees).each do |message|
		puts message
	end
end
