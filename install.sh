#!/bin/bash
sudo apt-get install -y byobu

sudo sed -i "s/\[ -n \"\$SHELL\" -a -x \"\$SHELL\" \] \&\& exec \"\$SHELL\" || exec \/bin\/sh/\[ -n \"\$SHELL\" -a -x \"\$SHELL\" \] \&\& exec \"\$SHELL\" --login || exec \/bin\/sh --login/g" /usr/bin/byobu-shell
sudo sed -i "s/set -g default-command \$SHELL/set -g default-command \"\$SHELL --login\"/g" /usr/share/byobu/profiles/tmux
