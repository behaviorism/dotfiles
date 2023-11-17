cd ~/dotfiles

git pull origin master

find ~/dotfiles ! -path "*scripts*" ! -path '*.git*' -depth 1 -exec cp -r {} ~ \;
