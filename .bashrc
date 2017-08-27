#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# imports
for f in aliases colors prompt; do
	source ~/dotfiles/.bashrc-${f}
done
