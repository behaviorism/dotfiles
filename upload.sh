cd ~/dotfiles

copy_folder() {
	mkdir -p `dirname ~/dotfiles/"$1"`
	cp -r ~/"$1" `dirname ~/dotfiles/"$1"`
}

paths=('.skhdrc' '.tmux.conf' '.yabairc' '.zshrc')

for p in $paths; do
	copy_folder $p
done

copy_folder .config/alacritty/
copy_folder .vim/*.*
copy_folder typescript/

git add .
git commit -m "updated dotfiles"
git push origin master
