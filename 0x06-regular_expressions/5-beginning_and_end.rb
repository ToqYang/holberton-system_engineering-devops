#!/usr/bin/env ruby
str = ""
for arg in ARGV do
  str += arg
end
patt = str.scan(/(^h)(\w{1})(n$)/).join
puts patt
