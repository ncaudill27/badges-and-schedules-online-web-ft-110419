def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(speakers)
  speakers.map{ |speaker| badge_maker(speaker) }
end

def assign_rooms(speakers)
  room_assignments = []
  speakers.each_with_index do |speaker, index|
    room_assignments << "Hello, #{speaker}! You'll be assigned to room #{index+1}!"
  end
  room_assignments
end

def printer(speakers)
  i = 0
  while i < speakers.length do
    puts batch_badge_creator(speakers)[i]
    puts assign_rooms(speakers)[i]
    i += 1
  end
end