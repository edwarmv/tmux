#!/usr/bin/env bash

# Minimal warm-dark theme. Use ANSI colours only (colour0-colour15).

# Core surfaces and text.
set -g status on
set -g status-position bottom
set -g status-justify absolute-centre
set -g status-style "fg=colour7,bg=colour0"
set -g status-left-style "fg=colour7,bg=colour0"
set -g status-right-style "fg=colour7,bg=colour0"
set -g status-left-length 40
set -g status-right-length 20
set -g status-left "#{prefix_highlight}#[fg=colour15]#S"
set -g status-right "#[fg=colour7]%H:%M "

# Quiet text-only window labels; the active window is bright and underlined.
set -g window-status-style "fg=colour7,bg=colour0"
set -g window-status-format " #[fg=colour7]#I #W #F "
set -g window-status-current-style "fg=colour15,bg=colour0,underscore"
set -g window-status-current-format "#[nounderscore] #[fg=colour15,underscore]#I #W #F#[nounderscore] "
set -g window-status-activity-style "fg=colour3,bg=colour0,bold"
set -g window-status-bell-style "fg=colour3,bg=colour0,bold"
set -g window-status-separator "•"

# Clear pane focus and concise pane titles.
set -g pane-border-style "fg=colour8,bg=colour0"
set -g pane-active-border-style "fg=colour3,bg=colour0"
set -g pane-border-format " #[fg=colour7]#{pane_index} #{pane_current_command} "
set -g tree-mode-border-style "fg=colour7,bg=default"

# Copy mode: clear amber selection with dark text.
set -g mode-style "fg=colour0,bg=colour3,bold"

# Messages and command prompts use a subtle secondary surface.
set -g message-style "fg=colour7,bg=colour0,fill=colour0"
set -g message-command-style "fg=colour3,bg=colour0,bold"

# Menus and popups use the same secondary surface.
set -g menu-style "fg=colour7,bg=default"
set -g menu-selected-style "fg=colour0,bg=colour3,bold"
set -g menu-border-style "fg=colour7,bg=default"

# Pane display indicators use the theme's focus hierarchy.
set -g display-panes-colour "colour3"
set -g display-panes-active-colour "colour15"
