if status is-interactive
    # Commands to run in interactive sessions can go here
end

if set -q ZELLIJ
else
    zellij
end

## kanagawa
#set -l foreground dcd7ba
#set -l selection 2d4f67
#set -l comment 727169
#set -l red c34043
#set -l yellow c0a36e
#set -l orange ff9e64
#set -l green 76946a
#set -l purple 957fb8
#set -l cyan 7aa89f
#set -l pink d27e99

## everforest
set -l foreground d3c6aa
set -l selection 2d4f67
set -l comment 859289
set -l red e67e80
set -l orange ff9e64
set -l yellow dbbc7f
set -l green a7c080
set -l purple d699b6
set -l cyan 7fbbb3
set -l pink d699b6

# Syntax Highlighting Colors
set -g fish_color_normal $foreground
set -g fish_color_command $cyan
set -g fish_color_keyword $pink
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $purple
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $green
set -g fish_color_escape $pink
set -g fish_color_autosuggestion $comment

# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment
