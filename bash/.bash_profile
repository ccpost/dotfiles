#### FIG ENV VARIABLES ####
# Please make sure this block is at the start of this file.
if [[ "$TERM_PROGRAM" != "WarpTerminal" ]]; then
    [ -s ~/.fig/shell/pre.sh ] && source ~/.fig/shell/pre.sh
fi
#### END FIG ENV VARIABLES ####

export BASH_SILENCE_DEPRECATION_WARNING=1

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

# Created by `userpath` on 2019-09-12 04:19:23
export PATH="$PATH:/Users/ccpost/.local/bin"

# if [[ "$TERM_PROGRAM" != "WarpTerminal" ]]; then
#     test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

#     iterm2_print_user_vars() {
#         iterm2_set_user_var awsProfile "$AWS_PROFILE"
#         iterm2_set_user_var awsVault "$AWS_VAULT"
#         iterm2_set_user_var terragruntSource "$TERRAGRUNT_SOURCE"
#         iterm2_set_user_var rvnMageBuildMode "$RVN_MAGE_BUILD_MODE"
#     }
# fi

source /Users/ccpost/.config/broot/launcher/bash/br

#### FIG ENV VARIABLES ####
# Please make sure this block is at the end of this file.
if [[ "$TERM_PROGRAM" != "WarpTerminal" ]]; then
    [ -s ~/.fig/fig.sh ] && source ~/.fig/fig.sh
fi
#### END FIG ENV VARIABLES ####
