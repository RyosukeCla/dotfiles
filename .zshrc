# bashprofile

 export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export GO111MODULE="on"
export GOPATH="$HOME/go"

# zshprofile from here

ZPREZTO_PATH=${HOME}/.zsh/prezto
ZPREZTO_INIT_PATH=${ZPREZTO_PATH}/init.zsh
if [[ -s "${ZPREZTO_INIT_PATH}" ]]; then
  source "${ZPREZTO_INIT_PATH}"
fi

function select-history() {
  BUFFER=$(history -n -r 1 | fzf --height 40% --reverse --no-sort --query "$LBUFFER" --prompt=" ❥ History > ")
  CURSOR=$#BUFFER
}
zle -N select-history
bindkey '^r' select-history

export PATH=${HOME}/.config/ryosuke-dotfiles/tmp/go/bin:$PATH
eval $(/opt/homebrew/bin/brew shellenv)
