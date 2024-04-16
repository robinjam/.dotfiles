autoload -Uz compinit && compinit
export EDITOR=nvim
source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh
eval "$(rbenv init - zsh)"
eval "$(starship init zsh)"
export PATH=$PATH:~/.dotfiles/bin

if type gds > /dev/null
then
  source <(gds shell-completion zsh)
  /usr/bin/ssh-add --apple-use-keychain ~/.ssh/id_ed25519
  export NOTIFY_CREDENTIALS=~/notify/notifications-credentials
  export PASSWORD_STORE_DIR=$NOTIFY_CREDENTIALS
  export GPG_TTY=$(tty)
  export PATH=${PATH}:`go env GOPATH`/bin
fi
