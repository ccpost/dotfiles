# Bash settings
HISTTIMEFORMAT="%d/%m/%y %T "
HISTSIZE=5000
HISTFILESIZE=10000

# Homebrew-installed Bash completions
for f in /usr/local/etc/bash_completion.d/*; do
    # Only source things that aren't opensc, since that seems to be broken
    if [[ `readlink $f` != *"Cellar/opensc"* ]]; then
        source $f
    fi
done

# Docker for Mac Bash completions
DOCKER_ETC_PATH="/Applications/Docker.app/Contents/Resources/etc"
if [[ -d $DOCKER_ETC_PATH ]]; then
    for f in $DOCKER_ETC_PATH/*.bash-completion; do
        source $f
    done
fi

# Prompt customization
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWCOLORHINTS=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWUPSTREAM="auto"
PROMPT_COMMAND='__git_ps1 "\u@\h:\W" "\\\$ "'

# General command aliases
alias vlc='"/Applications/VLC.app/Contents/MacOS/VLC"'
alias dnsflush='sudo killall -HUP mDNSResponder'
alias st='open -a sourcetree'
alias finder='open -a finder'
alias tf='terraform'

# pip / virtualenv interaction
export PIP_REQUIRE_VIRTUALENV=true
export SYSTEM_PIP=`which pip`
syspip() {
    PIP_REQUIRE_VIRTUALENV="" $SYSTEM_PIP "$@"
}
export SYSTEM_PIP3=`which pip3`
syspip3() {
    PIP_REQUIRE_VIRTUALENV="" $SYSTEM_PIP3 "$@"
}

# virtualenvwrapper setup
export WORKON_HOME=$HOME/.virtualenvs
# export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh

# Yubikey aliases
OPENSC_PKCS_LIB="/usr/local/lib/opensc.pkcs11.so"
alias yubi-add="ssh-add -l | grep $OPENSC_PKCS_LIB && ssh-add -e $OPENSC_PKCS_LIB; ssh-add -s $OPENSC_PKCS_LIB"
