#!/usr/bin/env ruby
str = ""
for arg in ARGV do
  str += arg
end
patt = str.scan(/(^\S{1,3}(\S){1,4}[^-]98)/).join
puts patt
