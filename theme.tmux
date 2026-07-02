#!/usr/bin/env bash

pane_counter='#{?#{==:#{window_panes},1},,[#P-#{window_panes}]}'

set -g mode-style "fg=colour7,bg=colour0,bold"
set -g message-style "fg=colour7,bg=colour0,fill=colour0,width=100%"
set -g message-command-style "fg=colour4,bg=colour0"
set -g pane-border-style "fg=colour8"
set -g pane-border-format "#[fg=colour7]#{?pane_active,,#[italics]} #{b:pane_current_path} "
set -g pane-active-border-style "fg=colour4"
set -g status "on"
set -g status-justify "absolute-centre"
set -g status-style "fg=colour8"
set -g status-left-length "100"
set -g status-right-length "100"
set -g status-left-style NONE
set -g status-right-style NONE
set -g status-left "#{prefix_highlight}#S "
set -g status-right "%a %d %b %H:%M "
set -g window-status-activity-style "underscore,fg=colour7"
set -g window-status-separator "•"
set -g window-status-style "fg=colour8"
set -g window-status-format " #I #{b:pane_current_path}:#W${pane_counter} #F "
set -g window-status-current-format " #[fg=colour5,bold]#I #[fg=colour7]#{b:pane_current_path}:#W${pane_counter} #F "
