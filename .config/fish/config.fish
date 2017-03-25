set PATH ~/.cargo/bin/ ~/bin/ $PATH /usr/lib/elixir/bin

set GEM_HOME (ruby -e 'print Gem.user_dir')

set -x EDITOR nvim

fish_vi_key_bindings

alias vim="nvim"
alias ls="ls -C --group-directories-first --color"
alias tmux="tmux -2"
