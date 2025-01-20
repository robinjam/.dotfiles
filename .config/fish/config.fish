if status is-interactive
    fish_vi_key_bindings
    set -g fish_vi_force_cursor 1
    set fish_cursor_default block
    set fish_cursor_insert line

    abbr --add g 'git'
    abbr --add ga 'git add'
    abbr --add gap 'git add --patch'
    abbr --add gc 'git commit'
    abbr --add gco 'git checkout'
    abbr --add gd 'git diff'
    abbr --add gdc 'git diff --cached'
    abbr --add gf 'git fetch'
    abbr --add gp 'git push'
    abbr --add gpf 'git push --force-with-lease'
    abbr --add gpl 'git pull'
    abbr --add gri 'git rebase -i'
    abbr --add gs 'git status'

    starship init fish | source
end
