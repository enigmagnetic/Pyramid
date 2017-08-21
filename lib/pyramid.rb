def get_base
  puts "How big is the base of your pyramid? Please enter positive integers only"
  user_input = gets.chomp.to_i

  until valid?(user_input)
    puts "Please enter a positive integer"
    user_input = gets.chomp.to_i
  end

  @user_input = user_input
  @baseline = "#" * user_input

  draw_pyramid
  puts @baseline
end

private

def valid?(user_input)
  return user_input.class == Integer && user_input > 0 ? true : false
end

def draw_pyramid
  baseline = @baseline.length
  iteration = 1
  pyramid_lines = []

  until baseline <= 1
    pyramid_lines << (" " * iteration + "#" * (baseline - 2) + " " * iteration)
    baseline -= 2
    iteration += 1
  end

  pyramid_lines.reverse!.each do |line|
      puts line
    end
end

get_base
