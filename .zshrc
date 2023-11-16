export MYVIMRC='~/.vim/.vimrc'
export VIMINIT='source $MYVIMRC'

# aliases
alias zshreload='source ~/.zshrc'
alias ts-init='cp ~/tsconfig.json tsconfig.json && cp ~/typescript.package.json package.json && yarn install && mkdir src && touch src/index.ts'
alias todo='vim ~/todo.txt'
alias vimrc='vim ~/.vim/.vimrc'
alias zshrc='vim ~/.zshrc'
alias alacritty-config='vim ~/.config/alacritty/alacritty.yml'
alias git-rm-ds-store='find . -name .DS_Store -print0 | xargs -0 git rm -f --ignore-unmatch'

# dotfiles sync
alias download-dotfiles='zsh ~/dotfiles/download.sh'
alias upload-dotfiles='zsh ~/dotfiles/upload.sh'
