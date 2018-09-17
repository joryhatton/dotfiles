#!/bin/sh
tmux kill-session -t rails-dev
tmux new -s rails-dev -d
tmux split-window -h
tmux resize-pane -R 10
tmux split-window -v
tmux split-window -v
tmux select-pane -t 0
tmux attach -t rails-dev
