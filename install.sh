#!/bin/bash
apt-get install byobu
echo "if [ \"$_byobu_sourced\" == \"\" ]" > /etc/profile.d/byobu.sh
echo "then" >> /etc/profile.d/byobu.sh
echo "    _byobu_sourced=1 TMUX= . /usr/bin/byobu-launch" >> /etc/profile.d/byobu.sh
echo "fi" >> /etc/profile.d/byobu.sh

sed -i "s/[ -n \"\$SHELL\" -a -x \"\$SHELL\" ] && exec \"\$SHELL\" || exec \/bin\/sh/[ -n \"\$SHELL\" -a -x \"\$SHELL\" ] && exec \"\$SHELL\" --login || exec \/bin\/sh --login/g" /bin/byobu-shell
sed -i "s/set -g default-command \$SHELL/set -g default-command \"\$SHELL --login\"/g" /usr/share/byobu/profiles/tmux
