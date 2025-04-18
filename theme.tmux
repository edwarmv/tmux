#!/usr/bin/env bash

set -g mode-style "fg=colour4,bg=colour0"
set -g message-style "fg=colour4,bg=colour0"
set -g message-command-style "fg=colour4,bg=colour0"
set -g pane-border-style "fg=colour8"
set -g pane-border-format "#[fg=colour7]#{?pane_active,,#[italics]} #(basename #{pane_current_path}) "
set -g pane-active-border-style "fg=colour4"
set -g status "on"
set -g status-justify "left"
set -g status-style "fg=colour8,bg=colour0"
set -g status-left-length "100"
set -g status-right-length "100"
set -g status-left-style NONE
set -g status-right-style NONE
set -g status-left ""
set -g status-right " #{prefix_highlight} #S %H:%M %Y-%m-%d"
setw -g window-status-activity-style "underscore,fg=colour7"
setw -g window-status-separator " "
setw -g window-status-style "NONE"
setw -g window-status-format "#I:#(basename #{pane_current_path})#F#{?#{==:#{window_panes},1},,[#P:#{window_panes}]}"
setw -g window-status-current-format "#[fg=colour5,bold]#I:#(basename #{pane_current_path})#F#{?#{==:#{window_panes},1},,[#P:#{window_panes}]}"
