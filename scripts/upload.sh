cd ~/dotfiles

find . -not \( -path "./.git" -prune \) -not \( -path "./scripts" -prune \) -exec rm -rf {} \;

copy_folder() {
	mkdir -p `dirname ~/dotfiles/"$1"`
	cp -r ~/${~1} `dirname ~/dotfiles/"$1"`
}

paths=('.skhdrc' '.tmux.conf' '.yabairc' '.zshrc' '.config/alacritty' '.vim/*.*' '.vim/.vimrc' 'typescript' '.yabai-i3barrc')

for p in $paths; do
	copy_folder $p
done

git add .
git commit -m "updated dotfiles"
git push origin master
