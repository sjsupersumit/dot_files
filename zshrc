set -o noclobber
source ~/.aliases
export PATH=~/.toolbox/bin:$PATH
export PATH=~/.local/bin:$PATH
export PATH=$(brew --prefix ruby)/bin:$PATH
export PATH=/usr/local/opt/grep/libexec/gnubin:$PATH
export PATH=$PATH:$HOME/go/bin
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/14/bin/psql
export PATH=/usr/local/bin/:$PATH
export EDITOR=/usr/local/bin/vim


setopt auto_cd
cdpath=($HOME/Documents $HOME/Downloads $HOME/Desktop $HOME/workspace)   

#edit comand in $EDITOR aka vim
autoload -U edit-command-line
zle -N edit-command-line
bindkey '^x^e' edit-command-line
bindkey '^xe' edit-command-line


# tmux home dir
export TMUX_TMPDIR=~/tmux_tmp


# If you come from bash you might have to change your $PATH.

export PATH=$HOME/bin:/usr/local/bin:$PATH
#SITE_FUNCTIONS=$(echo /usr/local/Cellar/env-improvement/*/share/zsh/site-functions | awk '{print $1}')   
#Auto  completions
fpath=($SITE_FUNCTIONS $fpath)   
autoload -U $SITE_FUNCTIONS/*(:t)

fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i

#for pyenv
#eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"
# Path to your oh-my-zsh installation.
export ZSH=/Users/sjha/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(z git osx jump zsh-syntax-highlighting zsh-autosuggestions) 

source $ZSH/oh-my-zsh.sh

prompt_dir() {
          prompt_segment blue black "%$(( $COLUMNS - 61 ))<...<%2~%<<"
  }

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export PATH=$BRAZIL_CLI_BIN:$PATH

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_COMPLETION_TRIGGER='**'
export GOPATH=$HOME/go
export GOROOT=/usr/local/Cellar/go/1.19/libexec/
export PATH=$PATH:$GOROOT/bin
export PATH="/usr/local/sbin:$PATH"

export NVM_DIR="/Users/sjha/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform
export EDITOR=/usr/bin/vim
eval "$(pyenv init -)"

export VAULT_ADDR=https://vault.sandbox.k8s.centrio.com:8200

function vault_token() {
    CLIENT_ID=`cat ~/.deployinator_api_key  | jq -r '."Client-Id"'`
    CLIENT_SECRET=`cat ~/.deployinator_api_key  | jq -r '."Client-Secret"'`
    export VAULT_TOKEN=`curl -X POST https://deployinator.sandbox.k8s.centrio.com/api/vault.tokens -H "Client-Id: ${CLIENT_ID}" -H "Client-Secret: ${CLIENT_SECRET}" | jq -r '.token'`
}

