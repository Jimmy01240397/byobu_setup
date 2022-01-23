#!/bin/bash
apt-get install byobu

sed -i "s/\[ -n \"\$SHELL\" -a -x \"\$SHELL\" \] \&\& exec \"\$SHELL\" || exec \/bin\/sh/\[ -n \"\$SHELL\" -a -x \"\$SHELL\" \] \&\& exec \"\$SHELL\" --login || exec \/bin\/sh --login/g" /usr/bin/byobu-shell
sed -i "s/set -g default-command \$SHELL/set -g default-command \"\$SHELL --login\"/g" /usr/share/byobu/profiles/tmux
