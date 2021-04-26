# Theme with full path names and hostname
# Handy if you work on different servers all the time;
PROMPT='%{$fg[cyan]%}%n%{$reset_color%}@%{$fg[yellow]%}%M:%{$fg[green]%}%/%{$reset_color%}$(git_prompt_info) %(!.#.$) '
#PROMPT='@%{$fg[yellow]%}%n%{$reset_color%}:%{$fg[green]%}[%c]%{$reset_color%}$(git_prompt_info) %(!.#.$) '
#PROMPT="%{$fg[green]%}[%~] %{$fg[cyan]%}$(git_prompt_info) %(!.#.$) %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[cyan]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_CLEAN="✔"
#ZSH_THEME_GIT_PROMPT_DIRTY="✗"
