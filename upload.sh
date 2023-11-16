cd ~/dotfiles

copy_folder() {
	mkdir -p `dirname ~/test/"$1"`
	cp -r ~/${~1} `dirname ~/test/"$1"`
}

paths=('.skhdrc' '.tmux.conf' '.yabairc' '.zshrc' '.config/alacritty' '.vim/.*' 'typescript')

for p in $paths; do
	copy_folder $p
done

git add .
git commit -m "updated dotfiles"
git push origin master
