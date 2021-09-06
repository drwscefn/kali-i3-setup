# Greeting
echo "Welcome to the Dark Side"
echo "https://islanddog.ky"

# Prompt
if [[ $(/opt/vpnbash.sh) == *.10.* ]]; then PROMPT="%F{red}┌[%f%F{green}%D{$(/opt/vpnserver.sh)}%f%F{red}]─[%f%F{green}%D{$(/opt/vpnbash.sh)}%f%F{red}][%B%F{%(#.red.blue)}%n%(#.💀.㉿)%m%b%F{%(#.blue.red)}]─[%f%F{magenta}%d%f%F{red}]%f"$'\n'"%F{red}└╼%f%F{green}[%f%F{yellow}★%f]%f%F{yellow}$%f" ;else PROMPT="%F{red}┌[%B%F{%(#.red.blue)}%n%(#.💀.㉿)%m%b%F{%(#.blue.red)}]─[%f%F{magenta}%d%f%F{red}]%f"$'\n'"%F{red}└╼%f%F{green}[%f%F{yellow}★%f]%f%F{yellow}$%f" ;fi

# Export PATH$
export PATH=~/.local/bin:/usr/bin:/usr/sandbox/:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/usr/share/games:/usr/local/sbin:/usr/sbin:/sbin:/home/crx/.cargo/bin:$PATH

# alias
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias ssh='TERM=xterm-color;PATH=~/.local/bin:/usr/bin:/usr/sandbox/:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/usr/share/games:/usr/local/sbin:/usr/sbin:/sbin:/home/kali/.cargo/bin:$PATH ssh'
alias multipull='cd /opt && sudo find . -mindepth 1 -maxdepth 1 -type d -print -exec sudo git -C {} pull \;'
alias mouse='sudo mousepad'
#####################################################
# Auto completion / suggestion
# Mixing zsh-autocomplete and zsh-autosuggestions
# Requires: zsh-autocomplete (custom packaging by Parrot Team)
# Jobs: suggest files / foldername / histsory bellow the prompt
# Requires: zsh-autosuggestions (packaging by Debian Team)
# Jobs: Fish-like suggestion for command history
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh
# Select all suggestion instead of top on result only
zstyle ':autocomplete:tab:*' insert-unambiguous yes
zstyle ':autocomplete:tab:*' widget-style menu-select
zstyle ':autocomplete:*' min-input 2
bindkey $key[Up] up-line-or-history
bindkey $key[Down] down-line-or-history

##################################################
# Fish like syntax highlighting
# Requires "zsh-syntax-highlighting" from apt

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Save type history for completion and easier life
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# Useful alias for benchmarking programs
# require install package "time" sudo apt install time
# alias time="/usr/bin/time -f '\t%E real,\t%U user,\t%S sys,\t%K amem,\t%M mmem'"
# Display last command interminal
echo -en "\e]2;Kali Terminal\a"
preexec () { print -Pn "\e]0;$1 - Kali Terminal\a" }
