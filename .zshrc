# ----------------------------------PLUGINS
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# ----------------------------------ALIASES
 alias setzsh="vim ~/.dot_files/.zshrc"
 alias setvim="vim ~/.dot_files/.vim/vimrc"
 alias settmux="vim ~/.dot_files/.tmux.conf"
 alias sij="cd ~/Code/Sijebu"
 alias lsv="ls -a1"
 alias ctags="`brew --prefix`/bin/ctags"
 alias maketags="ctags -R ."
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
export ZSH="/Users/devonneill/.oh-my-zsh"


# ----------------------------------FUNCTIONS
# AWS Get/Set secrets
function aws-generate-secret() {
  PROFILE=$1
  SERVICE=$2
  VALUE=$3
  aws --region eu-west-1 --profile "prodigy-$PROFILE" kms encrypt --key-id alias/parameter-store \
      --encryption-context service="$SERVICE" \
      --cli-binary-format raw-in-base64-out \
      --plaintext "$VALUE" \
      --output text --query CiphertextBlob
}
 
function aws-get-secret() {
  PROFILE=$1
  SECRET=$2
  aws --region eu-west-1 ssm get-parameter \
      --name "$SECRET" \
      --query 'Parameter.Value' \
      --output text \
      --with-decryption \
      --profile "prodigy-$PROFILE"
}

# Generate Secret
genpw(){ openssl rand -base64 24 | tr -dc '[:alnum:]'; }

# ----------------------------------GENERAL CONFIG AND INITIALISERS
# Set Theme
ZSH_THEME="theunraveler"
# ZSH_THEME="wezm"

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

# version manager initialisers
eval "$(rbenv init -)"
eval "$(nodenv init -)"

# thefuck config
eval $(thefuck --alias)

source $ZSH/oh-my-zsh.sh

