To install ruby and other prerequisites:
sudo apt-get install ruby-full build-essential zlib1g-dev

To install RubyGems packages:
echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

To install Jekyll and Bundler:
gem install jekyll bundler
