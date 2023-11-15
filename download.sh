cd ~/dotfiles

git pull origin master

find ~/dotfiles ! -name 'download.sh' ! -name 'upload.sh' ! -path '*.git*' -mindepth 1 -exec cp -r {} ~ \;
