set PATH ~/.cargo/bin/ ~/bin/ $PATH /usr/lib/elixir/bin

set -x EDITOR nvim

export GPG_TTY=(tty)

fish_vi_key_bindings

alias vim="nvim"
alias ls="exa --group-directories-first"
alias tmux="tmux -2"
