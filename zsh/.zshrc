export GITLINE_NO_TRACKED_UPSTREAM='upstream ${red}!${reset}'

if [[ ${OSTYPE} == darwin* ]]; then
    source <(/usr/local/bin/antibody init)
else
    source <(/usr/bin/antibody init)
fi

antibody bundle < $HOME/.zsh/plugins.txt

source $HOME/.zsh/init.zsh
source $HOME/.zsh/history.zsh
source $HOME/.zsh/stack.zsh
source $HOME/.zsh/keys.zsh
source $HOME/.zsh/aliases.zsh
source $HOME/.zsh/gpg-agent.zsh

# base16 theme
base16_gruvbox-dark-hard

if (( ${+commands[pyenv]} )); then
    export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"
    export PYENV_VIRTUALENV_DISABLE_PROMPT=1
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi
