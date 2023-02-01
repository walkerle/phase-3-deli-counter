# Write your code here.
require 'pry'

katz_deli = []

def line deli
  if deli.empty?
    puts "The line is currently empty."
  else
    current_line = "The line is currently:"
    deli.each.with_index(1) do |person, i|
      current_line << " #{i}. #{person}"
    end
    puts current_line
  end
end

def take_a_number deli, name
  deli << name
  puts "Welcome, #{name}. You are number #{deli.length} in line."
end

def now_serving deli
  if deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{deli[0]}."
    # puts "Currently serving #{deli.first}."
    deli.delete_at(0)
    # deli.shift
    # deli.delete(deli.first)
  end
end

# binding.pry
# 0