def caesar_cipher(str, shift_factor)
  ascii = str.chars.map { |e| (e.ord if e.match?(/[[:alpha:]]/)) || e }
  shifted = ascii.map { |e| (e + shift_factor if e.is_a? Numeric) || e }
  wraped = shifted.map { |e| (e - 26 if (e.is_a? Numeric) && ((e > 90 && e < 97) || (e > 122))) || e }
  result = wraped.map { |e| (e.chr if e.is_a? Numeric) || e }

  result.join("")
end

puts "Caesar Cipher"
puts "Please enter your text:"
text = gets.chomp
puts "Please enter the shift factor:"
num = gets.chomp.to_i
puts "The encoded text: #{caesar_cipher(text, num)}"