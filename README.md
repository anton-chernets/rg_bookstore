# README

This README would normally document whatever steps are necessary to get the
application up and running.

Bookstore for RubyGarage

My process deploy:

Installing Homebrew
````
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
````
Installing Ruby
````
brew install rbenv ruby-build

# Add rbenv to bash so that it loads every time you open a terminal
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
source ~/.bash_profile

# Install Ruby
rbenv install 2.5.1
rbenv global 2.5.1
ruby -v
````
Configuring Git
````
git config --global color.ui true
git config --global user.name "anton-chernets"
git config --global user.email "anton.fullstack@gmail.com"
ssh-keygen -t rsa -C "anton.fullstack@gmail.com"
````
into https://github.com/settings/keys enter key
````
cat ~/.ssh/id_rsa.pub
ssh -T git@github.com
````

Installing Rails

````
gem install rails -v 5.2.0
rbenv rehash
rails -v
````

Setting Up A Database: 
By default the postgresql user is your current OS X username with no password. For example, my OS X user is named ninja so I can login to postgresql with that username.

````
brew install postgresql
brew services start postgresql
````

Final Steps
````
rails new bookstore
rails new bookstore -d postgresql
cd bookstore
rake db:create
rails server
````

You can now visit http://localhost:3000 to view your new website!



Device

````
gem 'devise'
````

````
$ bundle
$ rails generate devise:install
$ rails generate devise User
````
все заготовленные миграции

````
$ rake db:migrate
$ rails generate devise:views
$ bundle install
````

You can now visit http://localhost:3000/users/sign_up and http://localhost:3000/users/sign_in

Вкинул в /device шаблоны с layout

поменял главную страницу на home/index

OmniAuth Facebook: for DEMO change callback_url: 'http://localhost:3000/users/auth/facebook/callback' at ngrok https url for example
and in fb tolls https://developers.facebook.com/apps/696762624025656/settings/basic/ change url app

Info
Some core gems usage:

* Devise
* haml-rails
* omniauth-facebook
