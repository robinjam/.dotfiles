if status is-interactive
    fish_vi_key_bindings
    set -g fish_vi_force_cursor 1
    set fish_cursor_default block
    set fish_cursor_insert line

    abbr --add g 'git'
    abbr --add ga 'git add'
    abbr --add gap 'git add --patch'
    abbr --add gc 'git commit'
    abbr --add gca 'git commit --amend --no-edit'
    abbr --add gcl 'git clone'
    abbr --add gco 'git checkout'
    abbr --add gd 'git diff'
    abbr --add gdc 'git diff --cached'
    abbr --add gf 'git fetch'
    abbr --add gp 'git push'
    abbr --add gpf 'git push --force-with-lease'
    abbr --add gpl 'git pull'
    abbr --add gr 'git rebase'
    abbr --add grc 'git rebase --continue'
    abbr --add gri 'git rebase -i'
    abbr --add gs 'git status'

    set -x EDITOR nvim
    starship init fish | source
    set -x PATH $PATH:~/.dotfiles/bin

    if type gds > /dev/null
        gds shell-completion fish | source
        /usr/bin/ssh-add --apple-use-keychain ~/.ssh/id_ed25519
        set -x NOTIFY_CREDENTIALS ~/notify/notifications-credentials
        set -x PASSWORD_STORE_DIR $NOTIFY_CREDENTIALS
        set -x GPG_TTY (tty)
        set -x PATH $PATH:(go env GOPATH)/bin
    end
end
