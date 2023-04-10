# frozen_string_literal: true

class Count

  puts "Input word:"
  input = gets.chomp
  letter_count = {}

  input.each_char do |char|

    next unless char.match?(/[a-zA-Z]/)

    char = char.downcase
    letter_count[char] ||= 0
    letter_count[char] += 1
  end

  puts "Result:"
  letter_count.each do |char, count|
    puts "#{char}-> #{count}"
  end

end
