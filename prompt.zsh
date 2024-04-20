source $(brew --prefix gitstatus)/gitstatus.prompt.zsh
if [[ -z $PROMPT_ONE_LINE ]]
then
PROMPT='%F{white}╭$([[ -n $VIRTUAL_ENV ]] && echo "%F{white}(%B%F{blue}${VIRTUAL_ENV:t:gs/%/%%}%b%F{white})")%F{white}[%B%F{magenta}%n%b$([[ -n $SSH_CLIENT ]] && echo "%f@%B%F{yellow}%m")%b%F{white}](%F{cyan}%B%$((-GITSTATUS_PROMPT_LEN-9))<...<%~%<<%b%F{white})$([[ -n $GITSTATUS_PROMPT ]] && echo "%F{white}[%f$GITSTATUS_PROMPT%F{white}]") %F{blue}%T
%F{white}╰ %(?.%F{green}.%F{red}%? )%#%f '
else
PROMPT='%F{white}-$([[ -n $VIRTUAL_ENV ]] && echo "%F{white}(%B%F{blue}${VIRTUAL_ENV:t:gs/%/%%}%b%F{white})")%F{white}[%B%F{magenta}%n%b$([[ -n $SSH_CLIENT ]] && echo "%f@%B%F{yellow}%m")%b%F{white}](%F{cyan}%B%$((-GITSTATUS_PROMPT_LEN-7))<...<%~%<<%b%F{white})$([[ -n $GITSTATUS_PROMPT ]] && echo "%F{white}[%f$GITSTATUS_PROMPT%F{white}]")- %(?.%F{green}.%F{red})%#%f '
fi
