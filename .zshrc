# ----------------------------------PLUGINS
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  asdf
)

# ----------------------------------ALIASES
 alias setzsh="vim ~/.zshrc"
 alias setvim="vim ~/.vimrc"
 alias settmux="vim ~/.dot_files/.tmux.conf"
 alias lsv="ls -a1"
 alias be="bundle exec"
 alias bi="bundle install"
 alias berdbm="bundle exec rake db:migrate"
 # Git
 alias gs="git status"
 alias gpsh="git push"
 alias gpll="git pull"
 alias gcm="git commit -m"

# ----------------------------------EXPORTS
# Path to oh-my-zsh installation.
export ZSH="/Users/Glends/.oh-my-zsh"

# Turn setup
export NUMBER=+27600438477
export DISPLAY_NAME="Ocean Saver number 1"
export CERTIFICATE="CnUKMQjQxP7Ft+KPAhIGZW50OndhIhhUdXJuLmlvIFFBIERldiA1IChEZXZvbilQ8ub7hgYaQHHuC6jzSx8SZFxMtTNtNau4GgxRWVWG1xE9/KAGwC2LtMfS2Sy4nze6rupMortyfHoDTNFWiLQtVh1TIEclhQASLm0kJKLYhP/k81q1sJ+qbSmRWezhW8LY76A3B06tPMcEcuxDwEVeFgH/btYkrmI="
export ORGANISATION_NAME="SaveTheOcean"
export ACCOUNT_EMAIL="user@example.org"


# ----------------------------------FUNCTIONS
# Generate Secret
genpw(){ openssl rand -base64 24 | tr -dc '[:alnum:]'; }

# ----------------------------------GENERAL CONFIG AND INITIALISERS
# Set Theme
ZSH_THEME="theunraveler"

# Automatically update without prompting.
 DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

# Change the command execution timestamp shown in the history command output.
 HIST_STAMPS="dd/mm/yyyy"

# Allow multithreading apps
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

source $ZSH/oh-my-zsh.sh
