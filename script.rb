def caesar_cipher(str, shift_factor)
  ascii = str.chars.map do |e|
    if e.match?(/[[:alpha:]]/)
      e.ord
    else
      e
    end
  end
  
  shifted = ascii.map do |e|
    if e.is_a? Numeric
      if (e + shift_factor > 90 && e + shift_factor < 97) || (e + shift_factor > 122)
        e + shift_factor - 26
      else
        e + shift_factor
      end
    else
      e
    end
  end

  result = shifted.map do |e|
    if e.is_a? Numeric
      e.chr
    else
      e
    end
  end

  result.join("")
end


puts "Caesar Cipher"
puts "Please enter your text:"
text = gets.chomp
puts "Please enter the shift factor:"
num = gets.chomp.to_i
puts "The encoded text: #{caesar_cipher(text, num)}"