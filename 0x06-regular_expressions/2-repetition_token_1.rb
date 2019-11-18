#!/usr/bin/env ruby
str = ""
for arg in ARGV do
  str += arg
end
patt = str.scan(/hb?tn/).join
puts patt
