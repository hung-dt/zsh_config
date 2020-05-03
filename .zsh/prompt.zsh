###
# Prompt settings
###

autoload -Uz promptinit
promptinit

# enable parameter expansion, command substitution, and
# arithmetic expansion
setopt prompt_subst

# Function to execute before running a command
preexec()
{
    timer=${timer:-$SECONDS}
}

# Function to execute before prompt is shown
precmd()
{
    elapsed=0
    if [ $timer ]; then
        elapsed=$(($SECONDS - $timer))
        unset timer
    fi

    # Put the string "hostname::/full/directory/path" in the title bar:
    echo -ne "\e]2;$PWD\a"

    # Put the parentdir/currentdir in the tab
    echo -ne "\e]1;$PWD:h:t/$PWD:t\a"

    # print an empty line before prompt is shown
    print ""
}

if [[ -f $HOME/.zsh/git_prompt.zsh ]]; then
    source $HOME/.zsh/git_prompt.zsh
fi

# some good colors for bg: 133, 166, 202, 208
PROMPT='%B%K{231}%F{0}  %F{231}%K{202} %* %K{23}%F{202} %F{231} %n@%m %K{33}%F{23} %B%F{233} %~ %F{33}%k $(git_info)
%B %F{cyan}${elapsed}s%f %(?.%F{28}.%F{red}✘)%f%b  '

