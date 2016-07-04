# Load Antigen
source ~/.antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle heroku
antigen bundle osx
antigen bundle nyan
antigen bundle nvm
antigen bundle rvm
antigen bundle python
antigen bundle pyenv
antigen bundle pip
antigen bundle docker
antigen bundle sudo
antigen bundle command-not-found


antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle kennethreitz/autoenv
antigen bundle rupa/z


# OS specific plugins
if [[ $CURRENT_OS == 'OS X' ]]; then
    antigen bundle brew
    antigen bundle brew-cask
    antigen bundle gem
    antigen bundle osx
elif [[ $CURRENT_OS == 'Linux' ]]; then
    # None so far...

    if [[ $DISTRO == 'CentOS' ]]; then
        antigen bundle centos
    fi
elif [[ $CURRENT_OS == 'Cygwin' ]]; then
    antigen bundle cygwin
fi


antigen theme bureau

export BULLETTRAIN_RUBY_SHOW=false

antigen apply

eval "$(pyenv virtualenv-init -)"
