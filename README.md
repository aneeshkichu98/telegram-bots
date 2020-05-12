# Telegram Chatbot using Ruby which can send Documents

A Telegram chatbot using Ruby. This chatbot is used to share class notes with students based on their request. The chatbot sends documents on recieving Telegram Bot commands from the user.

![NoteShare Demo](https://github.com/aneeshkichu98/telegram-bots/blob/master/preview.jpg)

There are two folders in here :
1. noteshare-link : accesses documents using a link
2. noteshare-local : accesses documents stored locally 

### Steps to built your chatbot are :
1. Get the Telegram bot API token from the Telegram BotFather.
2. Download any one of the folders (noteshare-link/noteshare-local) based on your preference and open the `bot.rb` file. This file contains the code that controls the behaviour of the chatbot. 
3. Replace the `TOKEN` with the API token you copied from BotFather:
```
require 'telegram_bot'
require 'telegramAPI'
token = 'TOKEN'
```
4. Now give a welcome message to the bot users:
```
when /start/i
         reply.text = "Welcome to NoteShare
		       Click the blue link to get the notes :
		       1.Maths /math1 /math2 /math3 
  		       2.English /eng1 /eng2 /eng3
		       3.Physics /phy1 /phy2 /phy3
		       4.Chemistry /chem1 /chem2 /chem3
		       5.Biology /bio1 /bio2 /bio3
		       6.Computer /comp1 /comp2 /comp3"
```
The `/math1` will act as a telegram command which can be clicked by users for requesting the notes of a particular chapter from a subject.

5. Now the reply for each command can be set as :
```
when /math1/i
   	    reply.text = "Maths Chapter 1"
      	    u=api.getUpdates({"timeout"=>180})
      	    u.each do |m|
            api.sendDocument m['message']['chat']['id'], "DOCUMENT"
	 end
```
The '/math1' is the telegram command and the `DOCUMENT` should be replaced with the link to the file or the location of the document stored locally.

6. The coding part is over, now to deploy the chatbot open the folder in your terminal:

Install Ruby and Bundler :
```
curl -L https://get.rvm.io | bash -s stable --ruby
sudo apt-get install bundler
```

Next type `bundle` to install the gem dependencies, and then `ruby bot.rb` to run the bot :
```
bundle
ruby bot.rb
```

**Note** : if you’re accessing your server via SSH, you’ll need to run the bot with `nohup ruby bot.rb &` to make sure the bot doesn’t stop working when the SSH session is terminated. Now you’re free to close the terminal window, safe in the knowledge that your bot is quietly running in the background.
