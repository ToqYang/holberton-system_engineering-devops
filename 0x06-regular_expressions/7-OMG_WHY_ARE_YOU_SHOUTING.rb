#!/usr/bin/env ruby
str = ""
for arg in ARGV do
  str += arg
end
patt = str.scan(/[A-Z]/).join
puts patt
