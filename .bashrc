export LANG=en_US.UTF-8
export EDITOR=nvim

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

alias todo="${EDITOR:-nano} ~/.todo.md"

open() {
    local file
    file=$(find . \( -type f -o -type d \) 2>/dev/null | fzf --info inline --preview 'cat {}')

    if [[ -d "$file" ]]; then
        cd "$file" || return
    elif [[ -f "$file" ]]; then
        # Check if the file is a text file
        if file "$file" | grep -qE 'text|ASCII|UTF-8'; then
            # Check if the file is writable by the user
            if [[ -w "$file" ]]; then
                # Open text files with the default editor
                "${EDITOR:-nano}" "$file"
            else
                # Open text files with sudo if not writable
                sudo "${EDITOR:-nano}" "$file"
            fi
        else
    	    # Check if the file is writable by the user
            if [[ -w "$file" ]]; then
                # Open other files with xdg-open or open
                xdg-open "$file" &> /dev/null || open "$file" &> /dev/null
            else
                # Open other files with sudo if not writable
                sudo xdg-open "$file" &> /dev/null || sudo open "$file" &> /dev/null
            fi
        fi

	cd "$(dirname "$file")" 
    fi
}
. "$HOME/.cargo/env"
