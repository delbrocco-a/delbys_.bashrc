# ---

# Delb'y's .bashrc
### Ao2026, used with JetBrains Mono.

# ---

## RHEL/Fedora Family Boilerplate (skip to ln25)

### Source global definitions (NB! Specific to fedora linux systems)
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

### User specific environment (NB! Specific to fedora linux systems)
if [[ ":$PATH:" != *":$HOME/.local/bin:$HOME/bin:"* ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

### Uncomment the following line if you don't like systemctl's auto-paging
### export SYSTEMD_PAGER=


## Custom prompt and listing colours ==========================================

### Custom prompt, with marker, time, hostname and working directory & its 1up
PS1="\[\033[036m\]|\[\033[037m\]\D{%H:%M}-[\h:/\[\033[036m\]\w\[\033[37m\]]$ "
PROMPT_DIRTRIM=2

### 4 colour scheme: dirs = cyan, exe = green, file = bold, links = purple
export LS_COLORS="di=36:ex=32:fi=1:ln=35"

### Custom cd function
function cd {
    builtin cd "$@" && echo -n "|-> " && pwd && ls
}

## ============================================================================


## Back2 RHEL/Fedora Family Boilerplate

### User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc
