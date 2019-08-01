#install MongoDB
sudo apt update
sudo apt-get install mongodb


sudo apt-add-repository ppa:brightbox/ruby-ng
sudo apt-get update -y && sudo apt-get upgrade -y

# Install gems
sudo gem install bundler
sudo gem install rake
sudo gem install rails
