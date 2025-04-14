#!/usr/bin/env bash

set -g mode-style "fg=colour4,bg=colour8"
set -g message-style "fg=colour4"
set -g message-command-style "fg=colour4"
set -g pane-border-style "fg=colour8"
set -g pane-border-format "#[fg=colour7]#{?pane_active,,#[italics]} #(basename #{pane_current_path}) "
set -g pane-active-border-style "fg=colour4"
set -g status "on"
set -g status-justify "absolute-centre"
set -g status-style "fg=colour7"
set -g status-left-length "100"
set -g status-right-length "100"
set -g status-left-style NONE
set -g status-right-style NONE
set -g status-left "#S "
set -g status-right " #{prefix_highlight} %H:%M %Y-%m-%d"
setw -g window-status-activity-style "underscore,fg=colour7"
setw -g window-status-separator " "
setw -g window-status-style "NONE"
setw -g window-status-format "#I:#(basename #{pane_current_path})#F"
setw -g window-status-current-format "#[fg=colour5,bold]#I:#(basename #{pane_current_path})#F"
