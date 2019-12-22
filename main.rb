require_relative './src/web_reader/database'
puts 'Welcome!'
puts 'available_messages:'
dh1 = DatabaseHandler.new("138.201.35.194", "cu-wi_rubybot", "gpqK3~21CH", "cu-wickertdustin01_RubyChat")
dh1.fetch_data("messages", "*")
dh1.print_data

