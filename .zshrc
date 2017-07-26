# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# 10ms for key sequences
KEYTIMEOUT=1

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

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
plugins=(git git-flow git-flow-completion sublime tmux zsh-syntax-highlighting zsh-autosuggestions)

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=cyan'
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=3'

source $ZSH/oh-my-zsh.sh
source ~/.bin/tmuxinator.zsh
# User configuration
export PATH=$PATH:/usr/local/mysql/bin
MYSQL=/usr/local/mysql/bin
export PATH=$PATH:$MYSQL
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH
# export MANPATH="/usr/local/man:$MANPATH"


# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
export EDITOR='nvim'

#System aliases
alias v='nvim'
alias wt='wifi_toggle'
alias cl='clear'
alias cll='clear; l'
alias ys=yat.sh
alias cpwd='pwd | pbcopy'
alias sau='sudo apt-get update && upgrade  -y'

# Dir aliases
alias fq='cd /Users/xito/Downloads/Facultad/Informatica/3ro'

# Vagrant aliases
alias vsh='vagrant ssh'
alias vgs='vagrant global-status'
alias vup='vagrant up'

# Ruby on Rails aliases
alias rs="rails s -b 0.0.0.0"
alias rc="rails console"
alias rn="rails new"
alias rscaffold="rails g scaffold"
alias rkr="rake routes"
alias rkdbm="rake db:migrate"
alias be="bundle exec"

# Aero aliases
alias gdx='cd ~/Aplicaciones/guidux'

# Programmer aliases
alias prettyjson='python -m json.tool'

alias subl='sublime'
alias bbdd2='cd /Users/xito/Code/eclipse\ workspace/'
# Create and change to that dir
alias wt='wifi_toggle'
alias cl='clear'
alias cll='clear; l'
# alias subl='sublime'
#
mkcdir ()
{
	    mkdir -p -- "$1" &&
		          cd -P -- "$1"
    }

# Add Aero ssh-id
addaero()
{
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/aero_id_rsa
}

# Automagic open tmux in remote
function sx () {/usr/bin/ssh -t $@ "tmux attach || tmux new";}

# Start Aero App's
function all_api(){
  actual_path="$PWD"
 cd ~/Code/Aero/Airlines
 echo "4007"
 rails s -p 4007 -d

cd ~/Code/Aero/agency
 echo "4006"
 rails s -p 4006 -d

# cd ~/Code/Aero/to-use-cards
#  echo "4015"
#  rails s -p 4015 -d

cd "$actual_path"
}

function all_api_close(){
  cat ~/Code/Aero/Airlines/tmp/pids/server.pid
  cat ~/Code/Aero/agency/tmp/pids/server.pid
  #kill -9 "$line $line2"
}

function ytb(){
  youtube-dl --extract-audio --audio-format mp3 --audio-quality 0 --output '~/Music/%(title)s.%(ext)s' $1
}

# rbenv init
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

alias ys=yat.sh
alias s=ssh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
