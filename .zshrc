#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# append
# path+=('/home/david/pear/bin')
# or prepend
#path=('/home/david/pear/bin' $path)
# export to sub-processes (make it inherited by child processes)
export PATH="${HOME}/.composer/vendor/bin:$PATH"

alias l='ls -alFh'

# Git aliases.
alias gst='git status'
alias gpu='git push -u origin'
alias gcb='git checkout -b'
alias gch='git checkout'
alias gpl='git pull'
