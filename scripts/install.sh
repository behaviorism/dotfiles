# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install ripgrep

# Install yabai and skhd
brew install yabai
# Overwrite current yabai version with 5.0.9 (supports borders)
sudo cp ~/dotfiles/scripts/yabai /usr/local/bin/yabai
brew install skhd

# Install vim plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

~/dotfiles/scripts/download.sh
