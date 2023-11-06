if status is-interactive
    # Commands to run in interactive sessions can go here
end

if type -q exa
    alias ll "exa -ls -g --icons -tree --sort=ext -1"
    alias lt "exa --tree --level=2"
end

set -gx LS_COLORS 'di=07;20'

alias vi "nvim"
alias vim "nvim"

starship init fish | source

set -g -x AWS_PROFILE rnd
