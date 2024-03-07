autoload -Uz compinit && compinit
export EDITOR=nvim
source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh
eval "$(rbenv init - zsh)"
eval "$(starship init zsh)"

if type gds > /dev/null
then
  export PATH=$PATH:${HOME}/govuk/govuk-docker/exe
  source <(gds shell-completion zsh)
  /usr/bin/ssh-add --apple-use-keychain .ssh/id_ed25519
  source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"

  alias k=kubectl
  source <(kubectl completion zsh)
  compdef k=kubectl
  use_context() {
    eval $(gds aws "govuk-$1-admin" -e --art 8h)
    export AWS_REGION=eu-west-1
    k config use-context $1
  }

  clone() {
    REPO=$(gh repo list alphagov --no-archived --topic govuk --limit 1000 --json name -q ".[].name" | fzf)
    if [[ ! -z $REPO ]]
    then
      cd ~/govuk
      git clone git@github.com:alphagov/$REPO.git
      cd $REPO
    fi
  }
fi
