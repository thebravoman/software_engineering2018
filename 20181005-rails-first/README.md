# Homework - R3
For 10 october 02:00:01 fix the quadractic equations.

# RVM
Reasons for existence

# GPG
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

gpg: directory `/home/student/.gnupg' created
gpg: new configuration file `/home/student/.gnupg/gpg.conf' created
gpg: WARNING: options in `/home/student/.gnupg/gpg.conf' are not yet active during this run
gpg: keyring `/home/student/.gnupg/secring.gpg' created
gpg: keyring `/home/student/.gnupg/pubring.gpg' created
gpg: requesting key D39DC0E3 from hkp server keys.gnupg.net
gpg: requesting key 39499BDB from hkp server keys.gnupg.net
gpg: /home/student/.gnupg/trustdb.gpg: trustdb created
gpg: key D39DC0E3: public key "Michal Papis (RVM signing) <mpapis@gmail.com>" imported
gpg: key 39499BDB: public key "Piotr Kuczynski <piotr.kuczynski@gmail.com>" imported
gpg: no ultimately trusted keys found
gpg: Total number processed: 2
gpg:               imported: 2  (RSA: 2)

# RVM Ruby

rvm install ruby
rvm autolibs disable
rvm install ruby

rvm list
rvm use ruby-2.5.1

# RUBY 2.5.1
Move to ruby 2.5.1

# Install rails

````
	gem install rails
	rails new project
	cd project
````

Uncomment mini_racer from gem file

````
	bundle install
	rails s
````

Visit 
localhost:3000 in the browser
