#!/usr/bin/env bash

# TokyoNight colors for Tmux

set -g mode-style "fg=#7aa2f7,bg=#3b4261"

set -g message-style "fg=#7aa2f7,bg=#3b4261"
set -g message-command-style "fg=#7aa2f7,bg=#3b4261"

set -g pane-border-style "fg=#3b4261"
set -g pane-active-border-style "fg=#7aa2f7"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#7aa2f7,bg=#1f2335"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#1d202f,bg=#7aa2f7,bold] #S #[fg=#7aa2f7,bg=#1f2335,nobold,nounderscore,noitalics] "
set -g status-right "#(gitmux \"#{pane_current_path}\")#[fg=#7aa2f7,bg=#1f2335] #{prefix_highlight}#[fg=#7aa2f7,bg=#3b4261] %Y-%m-%d %I:%M %p #[fg=#1d202f,bg=#7aa2f7,bold] #h "
if-shell '[ "$(tmux show-option -gqv "clock-mode-style")" == "24" ]' {
  set -g status-right "#(gitmux \"#{pane_current_path}\")#[fg=#7aa2f7,bg=#1f2335] #{prefix_highlight}#[fg=#7aa2f7,bg=#3b4261] %Y-%m-%d %H:%M #[fg=#1d202f,bg=#7aa2f7,bold] #h "
}

setw -g window-status-activity-style "underscore,fg=#a9b1d6,bg=#1f2335"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#a9b1d6,bg=#1f2335"
setw -g window-status-format "#[fg=#565f89]#I: #W#F "
setw -g window-status-current-format "#[fg=#7aa2f7,bg=#1f2335,bold]#I: #W#F #[fg=#3b4261,bg=#1f2335,nobold,nounderscore,noitalics]"

set -g popup-border-style fg=#29a4bd

set -g @prefix_highlight_fg '#1f2335'
set -g @prefix_highlight_bg '#e0af68'
set -g @prefix_highlight_sync_mode_attr 'fg=#1f2335,bg=#9ece6a'
set -g @prefix_highlight_copy_mode_attr 'fg=#1f2335,bg=#bb9af7'
