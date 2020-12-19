_fishy_collapsed_wd() {
  echo $(pwd | perl -pe '
   BEGIN {
      binmode STDIN,  ":encoding(UTF-8)";
      binmode STDOUT, ":encoding(UTF-8)";
   }; s|^$ENV{HOME}|~|g; s|/([^/.])[^/]*(?=/)|/$1|g; s|/\.([^/])[^/]*(?=/)|/.$1|g
')
}

function display_loadaverage {
    echo `cat /proc/loadavg | cut -d ' ' -f-3` 2>/dev/null
}

function get_date {
    date +"%H:%M:%S"
}

PROMPT='$USERNAME%{$fg_bold[red]%}@$HOST%{$reset_color%}:'
PROMPT+='%{$fg[cyan]%}$(_fishy_collapsed_wd) $(git_prompt_info)'
PROMPT+='%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

RPROMPT='%{$reset_color%}[$(display_loadaverage)|$(get_date)]'
