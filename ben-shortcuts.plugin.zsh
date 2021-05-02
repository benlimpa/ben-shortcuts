# add color
alias ls='ls --color=auto'
alias grep='grep --color'

# common actions
alias stvpn='~/Projects/scripts/vpn.sh'
alias stgnome='XDG_SESSION_TYPE=wayland dbus-run-session gnome-session'
alias sttunnel='~/s/start_ssh_tunnel.sh'

alias mntflash='sudo mount -o gid=users,fmask=113,dmask=002'
alias atmon='~/Projects/scripts/attach_monitor.sh'
alias stopam='eval $(opam env)'
alias lsr='ls -rt'
evinced () { nohup evince $1 2>&1 1>/dev/null &! }

alias darkmode='env GTK_THEME=Arc:dark'


# Editors
alias v='nvim'
alias vf='nvim "$(fzf)"'
alias emc='emacsclient -a "" -c --no-wait'
alias em='emacsclient -a "" -t'
alias e='emacsclient -a "" -t'

# python
alias py='python'
stpyenv () { if [[ $# > 0 ]]; then; source ~/venv37/bin/activate; else; source ~/venv38/bin/activate; fi }
alias prun='pipenv run python'

# seasnet
alias g32='g++ -std=c++14 -Wall -Wextra -Wno-sign-compare -Werror=return-type -Wl,--rpath=/usr/local/cs/lib64 -fsanitize=address -fsanitize=undefined -fsanitize=bounds -fno-omit-frame-pointer'
sshlnx () { sshpass -f /home/benlimpa/.ssh/uclalnx ssh limpanuk@lnxsrv0$1.seas.ucla.edu }
scplnx () { sshpass -f /home/benlimpa/.ssh/uclalnx scp $2 limpanuk@lnxsrv0$1.seas.ucla.edu:/u/cs/ugrad/limpanuk/$3 }
alias mntlnx='sshpass -f /home/benlimpa/.ssh/uclalnx sshfs limpanuk@lnxsrv08.seas.ucla.edu:/u/cs/ugrad/limpanuk/CS33 ~/remote'

# finding stuff
alias -g ff='"$(fzf)"'
alias -g FF='| fzf'
findinfile () { find $1 -exec grep -i -l $2 {} \; 2>/dev/null }

# git
alias ga='git add'
alias gst='git status'
alias gp='git push'
alias gc='git commit --verbose'
alias gpl='git pull --rebase'
