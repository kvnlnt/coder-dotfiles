alias ll="ls -la"
alias ld='ls -la --group-directories-first'
alias lp='sed "s/:/\n/g" <<< "$PATH"'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias chrome='google-chrome'
alias docker-clean='docker system prune -a'
alias k=kubectl

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
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

# Google Cloud SDK.
if [ -f '/opt/google-cloud-sdk/path.bash.inc' ]; then
  . '/opt/google-cloud-sdk/path.bash.inc';
fi

# Command completion for gcloud.
if [ -f '/opt/google-cloud-sdk/completion.bash.inc' ]; then
  . '/opt/google-cloud-sdk/completion.bash.inc';
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