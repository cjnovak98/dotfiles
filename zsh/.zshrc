


export PATH="${HOME}/.local/bin/backplane/latest:${PATH}:${HOME}/.local/bin:/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code"

eval "$(mise activate zsh)"
eval "$(zoxide init --cmd cd zsh)"
eval "$(fzf --zsh)"


alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ll='ls -l'
alias l='ls'
alias ls='ls --color'
alias la='ls -al'

autoload -U compinit && compinit
autoload -Uz vcs_info


precmd () {
 print -Pn "\e]2;%-3~\a";
 vcs_info 
}

setopt prompt_subst
zstyle ':vcs_info:git*' formats "%u %F{green}%b%f"

PS1='%F{blue}%B%~%b%f ${vcs_info_msg_0_} %F{%(?.green.red)}❯%f'
## PROMPT='${PS1} ${vcs_info_msg_0_}%# '
