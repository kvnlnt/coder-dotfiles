
export NAMESPACE="kevinlint"
export GOOGLE_PROJECT_ID="coder-dev-1"
export PATH="$HOME/code/m/devbin:$PATH"
export GOPATH="$HOME/go"
export GOBIN="$GOPATH/bin/"
export PATH="$PATH:$GOBIN"

alias ll="ls -la"
alias ld='ls -la --group-directories-first'
alias lp='sed "s/:/\n/g" <<< "$PATH"'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias chrome='google-chrome'
alias docker-clean='docker system prune -a'
alias k=kubectl

# Coder devbin
if [ -d "$HOME/Code/m/devbin" ]; then
  PATH="$HOME/Code/m/devbin:$PATH"
fi 

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Adds ~/bin
if [ -d "$HOME/bin" ]; then
  PATH="$HOME/bin:$PATH"
fi

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Fancy PS1 for git directories
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "