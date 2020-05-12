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
		       1.Maths /mat1
		       2.Database Design /dbd1 /dbd2
		       3.Computer Organisation and Architecture /con1 /con2
	               4.Operating System /os1 /os2
		       5.Object Oriented Programming Design /oodj1 /oodj2
		       6.Business Economics /eco1 /eco2"
         when /mat12/i
            reply.text = "Maths Module 1"
            u=api.getUpdates({"timeout"=>180})
            u.each do |m|
           api.sendDocument m['message']['chat']['id'], "/noteshare-local/backup/Maths S4 Module 1.pdf"
         end
         when /dbd1/i
            reply.text = "Database Design Module 1"
            u=api.getUpdates({"timeout"=>180})
            u.each do |m|
            api.sendDocument m['message']['chat']['id'], "/noteshare-local/backup/Database Design Module 1.pdf"
         end
         when /dbd2/i
            reply.text = "Database Design Module 1"
            u=api.getUpdates({"timeout"=>180})
            u.each do |m|
         api.sendDocument m['message']['chat']['id'], "/noteshare-local/backup/Database Design Module 2.pdf"   
         end
         when /con1/i
            reply.text = "Computer Organisation and Architecture Module 1"   
            u=api.getUpdates({"timeout"=>180})   
            u.each do |m|   
            api.sendDocument m['message']['chat']['id'], "/noteshare-local/backup/Computer Organization 1.pdf"
         end
         when /con2/i
            reply.text = "Computer Organisation and Architecture Module 2"
            u=api.getUpdates({"timeout"=>180})
            u.each do |m|
            api.sendDocument m['message']['chat']['id'], "/noteshare-local/backup/Computer Organization 2.pdf"
         end
         when /os1/i
            reply.text = "Operating System Module 1"
            u=api.getUpdates({"timeout"=>180})
            u.each do |m|
            api.sendDocument m['message']['chat']['id'], "/noteshare-local/backup/Operating Systems 1.pdf"
         end
         when /os2/i
            reply.text = "Operating System Module 2"
            u=api.getUpdates({"timeout"=>180})   
            u.each do |m|
            api.sendDocument m['message']['chat']['id'], "/noteshare-local/backup/Operating Systems 2.pdf"
         end
         when /oodj1/i
            reply.text = "Object Oriented Programming Design Module 1"
            u=api.getUpdates({"timeout"=>180})   
            u.each do |m|   
            api.sendDocument m['message']['chat']['id'], "/noteshare-local/backup/Object Oriented 1.pdf"
         end
         when /oodj2/i
            reply.text = "Object Oriented Programming Design Module 2"
            u=api.getUpdates({"timeout"=>180})
            u.each do |m|
            api.sendDocument m['message']['chat']['id'], "/noteshare-local/backup/Object Oriented 2.pdf"
         end
         when /eco1/i
            reply.text = "Business Economics Module 1"
            u=api.getUpdates({"timeout"=>180})
            u.each do |m|
            api.sendDocument m['message']['chat']['id'], "/noteshare-local/backup/Business Economics 1.pdf"
         end
         when /eco2/i
            reply.text = "Business Economics Module 2"
            u=api.getUpdates({"timeout"=>180})
            u.each do |m|
            api.sendDocument m['message']['chat']['id'], "/noteshare-local/backup/Business Economics 2.pdf"
         end
      end
      puts "sending #{reply.text.inspect} to @#{message.from.username}"
      reply.send_with(bot)
   end
end
