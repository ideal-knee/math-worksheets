# Usage
#
#     ruby subtraction.rb > subtraction.html

DOMAIN = (1..20).to_a

def print_equation
  a = DOMAIN.sample
  b = DOMAIN.sample
  c = (a - b).abs

  subtrahend, difference, minuend = [a, b, c].sort

  if rand < 0.5
    subtrahend, difference = difference, subtrahend
  end

  puts "<div style=\"display: inline-block; padding: 18pt;\"><pre>"
  puts minuend.to_s.rjust(4)
  puts "-" + subtrahend.to_s.rjust(3)
  puts "----"
  puts "</pre></div>"
end

60.times { print_equation }
