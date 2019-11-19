#!/usr/bin/env ruby
str = ""
for arg in ARGV do
  str += arg
end
patt = str.scan(/(^\S{1,3}(\S){1,4}[^-]\d{1,3})/).join
puts patt
