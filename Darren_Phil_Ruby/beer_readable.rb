#!/usr/bin/env ruby

# I'm sure there's more that can be done, but this is where
# we got to on the day.

x="bottles of beer"
y=" on the wall"

# http://ruby-doc.org/core-2.1.2/Integer.html#method-i-downto
99.downto(2) do |b|
  puts "#{b} #{x+y}, #{b} #{x+y}.";
  # http://ruby-doc.org/core-2.1.2/String.html#method-i-sub
  puts "Take one down and pass it around, #{b-1} #{b==2 ? x.sub('es','e') : x}#{y}.\n\n";
end

# Copy the string x and get rid of the 's' so we can
# use x again on the last line.
# http://ruby-doc.org/core-2.1.2/String.html#method-i-b
z=x.b
z[6]="";

puts "1 #{z}#{y}, 1 #{z}.";
puts "Go to the store and buy some more, 99 #{x+y}."
