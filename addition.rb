# Usage
#
#     ruby addition.rb > addition.html

DOMAIN = (1..20).to_a

def print_equation
  a = DOMAIN.sample
  b = DOMAIN.sample
  c = (a - b).abs

  addend_1, addend_2, sum = [a, b, c].sort

  if rand < 0.5
    addend_1, addend_2 = addend_2, addend_1
  end

  puts "<div style=\"display: inline-block; padding: 18pt;\"><pre>"
  puts addend_1.to_s.rjust(4)
  puts "+" + addend_2.to_s.rjust(3)
  puts "----"
  puts "</pre></div>"
end

60.times { print_equation }
