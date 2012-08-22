#!/usr/bin/env ruby
# encoding: utf-8
require 'libthai4r'

# libthai requires input to be tis620/windows874 (one-byte char)
input = 'ภาษาไทยเป็นภาษาที่ง่ายที่สุดในโลก'
input_windows874 = input.encode('Windows-874', :undef => :replace,:replace => '')

# break words in the line
output_windows874 = LibThai::brk_line(input_windows874)

# encode back to UTF-8
output = output_windows874.encode('UTF-8')

print output
