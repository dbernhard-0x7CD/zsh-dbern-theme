_fishy_collapsed_wd() {
  echo $(pwd | perl -pe '
   BEGIN {
      binmode STDIN,  ":encoding(UTF-8)";
      binmode STDOUT, ":encoding(UTF-8)";
   }; s|^$ENV{HOME}|~|g; s|/([^/.])[^/]*(?=/)|/$1|g; s|/\.([^/])[^/]*(?=/)|/.$1|g
')
}
function battery_display {
    cap=$( cat /sys/class/power_supply/BAT0/capacity )

    if [[ $cap -gt 60 ]] then
        color_of_out="%{$fg[green]%}"
    elif [[ $cap -gt 35 ]] then
        color_of_out="%{$fg[yellow]%}"
    else
        color_of_out="%{^[[31m%}"
    fi

    echo $color_of_out$cap"%{$reset_color%}"
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

RPROMPT='%{$reset_color%}[BAT:$(battery_display)|$(display_loadaverage)|$(get_date)]'
