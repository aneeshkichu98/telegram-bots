require 'telegram_bot'
require 'telegramAPI'
token = '<bot_token_recieved_from_botfather>'
bot = TelegramBot.new(token: token)
api = TelegramAPI.new(token)

bot.get_updates(fail_silently: true) do |message|
   puts "@#{message.from.username}: #{message.text}"
   command = message.get_command_for(bot)

   message.reply do |reply|
      case command
      when /start/i
         reply.text = "Welcome to NoteShare
		       Click the blue link to get the notes :
		       1.Maths /math1 /math2 /math3 
  		       2.English /eng1 /eng2 /eng3
		       3.Physics /phy1 /phy2 /phy3
		       4.Chemistry /chem1 /chem2 /chem3
		       5.Biology /bio1 /bio2 /bio3
		       6.Computer /comp1 /comp2 /comp3"
	 when /math1/i
   	    reply.text = "Maths Chapter 1"
      	    u=api.getUpdates({"timeout"=>180})
      	    u.each do |m|
            api.sendDocument m['message']['chat']['id'], "<google_drive_link_of_notes.pdf>"
	 end
	 when /math2/i
   	    reply.text = "Maths Chapter 2"
      	    u=api.getUpdates({"timeout"=>180})
      	    u.each do |m|
            api.sendDocument m['message']['chat']['id'], "<google_drive_link_of_notes.pdf>"
	 end
    	 when /math3/i
   	    reply.text = "Maths Chapter 3"
      	    u=api.getUpdates({"timeout"=>180})
      	    u.each do |m|
            api.sendDocument m['message']['chat']['id'], "<google_drive_link_of_notes.pdf>"
	 end
	 when /eng1/i
   	    reply.text = "English Chapter 1"
      	    u=api.getUpdates({"timeout"=>180})
      	    u.each do |m|
            api.sendDocument m['message']['chat']['id'], "<google_drive_link_of_notes.pdf>"
	 end
	 when /eng2/i
   	    reply.text = "English Chapter 2"
      	    u=api.getUpdates({"timeout"=>180})
      	    u.each do |m|
            api.sendDocument m['message']['chat']['id'], "<google_drive_link_of_notes.pdf>"
	 end
	 when /eng3/i
   	    reply.text = "English Chapter 3"
      	    u=api.getUpdates({"timeout"=>180})
      	    u.each do |m|
            api.sendDocument m['message']['chat']['id'], "<google_drive_link_of_notes.pdf>"
	 end
	 when /phy1/i
   	    reply.text = "Physics Chapter 1"
      	    u=api.getUpdates({"timeout"=>180})
      	    u.each do |m|
            api.sendDocument m['message']['chat']['id'], "<google_drive_link_of_notes.pdf>"
	 end
	 when /phy2/i
   	    reply.text = "Physics Chapter 2"
      	    u=api.getUpdates({"timeout"=>180})
      	    u.each do |m|
            api.sendDocument m['message']['chat']['id'], "<google_drive_link_of_notes.pdf>"
	 end
	 when /phy3/i
   	    reply.text = "Physics Chapter 3"
      	    u=api.getUpdates({"timeout"=>180})
      	    u.each do |m|
            api.sendDocument m['message']['chat']['id'], "<google_drive_link_of_notes.pdf>"
	 end
	 when /chem1/i
   	    reply.text = "Chemistry Chapter 1"
      	    u=api.getUpdates({"timeout"=>180})
      	    u.each do |m|
            api.sendDocument m['message']['chat']['id'], "<google_drive_link_of_notes.pdf>"
	 end
	 when /chem2/i
   	    reply.text = "Chemistry Chapter 2"
      	    u=api.getUpdates({"timeout"=>180})
      	    u.each do |m|
            api.sendDocument m['message']['chat']['id'], "<google_drive_link_of_notes.pdf>"
	 end
	 when /chem3/i
   	    reply.text = "Chemistry Chapter 3"
      	    u=api.getUpdates({"timeout"=>180})
      	    u.each do |m|
            api.sendDocument m['message']['chat']['id'], "<google_drive_link_of_notes.pdf>"
	 end
	 when /bio1/i
   	    reply.text = "Biology Chapter 1"
      	    u=api.getUpdates({"timeout"=>180})
      	    u.each do |m|
            api.sendDocument m['message']['chat']['id'], "<google_drive_link_of_notes.pdf>"
	 end
	 when /bio2/i
   	    reply.text = "Biology Chapter 2"
      	    u=api.getUpdates({"timeout"=>180})
      	    u.each do |m|
            api.sendDocument m['message']['chat']['id'], "<google_drive_link_of_notes.pdf>"
	 end
	 when /bio3/i
   	    reply.text = "Biology Chapter 3"
      	    u=api.getUpdates({"timeout"=>180})
      	    u.each do |m|
            api.sendDocument m['message']['chat']['id'], "<google_drive_link_of_notes.pdf>"
	 end
	 when /comp1/i
   	    reply.text = "Computer Chapter 1"
      	    u=api.getUpdates({"timeout"=>180})
      	    u.each do |m|
            api.sendDocument m['message']['chat']['id'], "<google_drive_link_of_notes.pdf>"
	 end
	 when /comp2/i
   	    reply.text = "Computer Chapter 2"
      	    u=api.getUpdates({"timeout"=>180})
      	    u.each do |m|
            api.sendDocument m['message']['chat']['id'], "<google_drive_link_of_notes.pdf>"
	 end
	 when /comp3/i
   	    reply.text = "Computer Chapter 3"
      	    u=api.getUpdates({"timeout"=>180})
      	    u.each do |m|
            api.sendDocument m['message']['chat']['id'], "<google_drive_link_of_notes.pdf>"
	 end
      end
      puts "sending #{reply.text.inspect} to @#{message.from.username}"
      reply.send_with(bot)
   end
end
