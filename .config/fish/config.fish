abbr -a install sudo pacman -S
abbr -a update sudo pacman -Syu
abbr -a p sudo pacman

abbr -a ls exa
abbr -a la exa -la

set -gx VISUAL nvim
set -gx EDITOR nvim
set -gx PATH $PATH /home/michciu/.gem/ruby/2.7.0/bin/ /home/michciu/.emacs.d/bin/

# Gruvbox Dark Medium theme
set red fb4934 
set green b8bb26
set yellow fabd2f
set orange fe8019
set blue 83a598
set purple d3869b
set aqua 8ec07c
set gray a89984
set fg ebdbb2
set bg 282828

set fish_color_normal $fg           # the default color
set fish_color_command $blue         # the color for commands
set fish_color_quote $green         # the color for quoted blocks of text
set fish_color_redirection $fg      # the color for IO redirections
set fish_color_end $purple          # the color for process separators like ';' and '&'
set fish_color_error $red --bold    # the color used to highlight potential errors
set fish_color_param $orange        # the color for regular command parameters
set fish_color_comment $gray        # the color used for code comments
set fish_color_match $orange        # the color used to highlight matching parenthesis
set fish_color_selection $gray      # the color used when selecting text (in vi visual mode)
set fish_color_search_match $gray   # used to highlight history search matches and the selected pager item (must be a background)
set fish_color_operator $green      # the color for parameter expansion operators like '*' and '~'
set fish_color_escape $yellow       # the color used to highlight character escapes like '\n' and '\x70'
set fish_color_cwd $yellow            # the color used for the current working directory in the default prompt
set fish_color_autosuggestion $gray # the color used for autosuggestions
set fish_color_user $yellow           # the color used to print the current username in some of fish default prompts
set fish_color_host $blue           # the color used to print the current host system in some of fish default prompts
set fish_color_cancel $purple       # the color for the '^C' indicator on a canceled command

# Additionally, the following variables are available to change the highlighting in the completion pager:

set fish_pager_color_prefix $yellow     # the color of the prefix string, i.e. the string that is to be completed
set fish_pager_color_completion $orange # the color of the completion itself
set fish_pager_color_description $green # the color of the completion description
set fish_pager_color_progress $aqua     # the color of the progress bar at the bottom left corner
set fish_pager_color_secondary          # the background color of the every second completion
