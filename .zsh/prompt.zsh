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
PROMPT='%B%F{magenta}%*%f [%F{green}%~%f] $(git_info)
%b⏳%F{cyan}${elapsed}s%f %B%(?.%F{green}√.%F{red}✘) %F{yellow}%n%f@%F{14}%m%f%b %# '

