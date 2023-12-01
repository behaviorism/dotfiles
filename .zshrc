export MYVIMRC='~/.vim/.vimrc'
export VIMINIT='source $MYVIMRC'

# aliases
alias zshreload='source ~/.zshrc'
alias ts-init='cp ~/tsconfig.json tsconfig.json && cp ~/typescript.package.json package.json && yarn install && mkdir src && touch src/index.ts'
alias todo='vim ~/todo.txt'
alias ubersicht-widgets='cd $HOME/Library/Application\ Support/Übersicht/widgets'
alias git-rm-ds-store='find . -name .DS_Store -print0 | xargs -0 git rm -f --ignore-unmatch'

# dotfiles sync
alias download-dotfiles='zsh ~/dotfiles/scripts/download.sh'
alias upload-dotfiles='zsh ~/dotfiles/scripts/upload.sh'
