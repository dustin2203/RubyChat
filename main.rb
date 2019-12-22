#require 'win32/api'
#include Win32

require "Win32API"

title = "My Appli"
text = "Hello World"

dialog = Win32API.new('user32', 'MessageBox', "LPPL", "I")
result = dialog.call(0, text, title, 1)

case result
when 1
      puts "clicked OK"
when 2
      puts "clicked canceled"
else
  puts "clicked something else"
end

