Install 
~~~~~~~~~~~~
ruby -v
ruby 2.6.3p62 (2019-04-16 revision 67580) [x86_64-darwin17]

rails -v
Rails 6.0.0

as per http://installrails.com/

gem install

run rails db:migrate

run rails db:seed


Autoreload using Nodemon
> sudo npm install nodemon 
> sudo chmod +x restart_rails.sh
> nodemon -L --exec "./restart_rails.sh"




~~~~~~~~~~~~

Why Transaction is called in some places on create where we can call Table_ModelName.add() directly ?

use root_folder to keep root files..