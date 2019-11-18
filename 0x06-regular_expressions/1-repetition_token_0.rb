#!/usr/bin/env ruby
str = ""
for arg in ARGV do
  str += arg
end
patt = str.scan(/(hb(t{2,5})n)/).join
puts patt
