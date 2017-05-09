#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias l='ls --color=auto'
alias la='ls -a --color=auto'
alias mk='mkdir'
alias rmr='rm -r'
alias e='exit'
alias vim='nvim'
alias vi='nvim'
alias vs='if [ -e "Session.vim" ]; then vim -S; else vim; fi'
alias x='xfce4-panel & exit'
alias ta='tmux a'
alias tn='tmux new -s main'
alias jd='mv */* ./'
alias ddinfo='sudo kill -USR1 $(pidof dd)'
alias sudo='sudo -E'
alias su='su -m'
alias y='yaourt'
alias u='yaourt -Syua --noconfirm'
alias ue='yaourt -Syua --noconfirm && exit'
alias mp3='mp3gain -a *.mp3'
alias flactomp3='whatmp3 -n --V0 .'
alias hw='inxi -Fx'
alias fixsteam='find ~/.steam/root/ \( -name "libgcc_s.so*" -o -name "libstdc++.so*" -o -name "libxcb.so*" -o -name "libgpg-error.so*" \) -print -delete'
alias vpn='~/dotfiles/vpn.sh'
alias vimgolf='~/.gem/ruby/2.3.0/bin/vimgolf'
alias addtobeginning=addtobeginningfunction
alias cmus-update='rm -rf ~/.config/cmus && read -p "Start cmus and press [Enter]" && cmus-remote -l "/home/robert/Music"'
alias converttox264=converttox264function
alias convertalltox264=convertalltox264function
alias generatepw='pwgen -s -y 12'
alias hosts='cd /home/robert/dev/hosts && cp whitelist .. && cp myhosts .. && git reset --hard HEAD && git pull && mv ../whitelist . && mv ../myhosts . && python3 updateHostsFile.py -a -r -b -e gambling && cd -'
alias uh='yaourt -Syua --noconfirm && cd /home/robert/dev/hosts && cp whitelist .. && cp myhosts .. && git reset --hard HEAD && git pull && mv ../whitelist . && mv ../myhosts . && python3 updateHostsFile.py -a -r -b -e gambling && cd -'
alias uhe='yaourt -Syua --noconfirm && cd /home/robert/dev/hosts && python3 updateHostsFile.py -a -r -b -e gambling && exit'
alias blankhost='sudo mv /etc/hosts /etc/hosts.tmp && sudo cp /etc/hosts.blank /etc/hosts && read -p "Press [Enter] to revert to normal hosts file" && sudo mv /etc/hosts.tmp /etc/hosts'
alias doc='cd ~/Doktorarbeit/Arbeit/999-Arbeit/ && vim main.tex'
alias spell='aspell --lang=de_DE --mode=tex check'
alias party='cd ~/Dropbox/Meine_Daten/backup/xbmc/makePlaylist && ./makePlaylist.sh && scp PartyMode.xsp root@kodi:~/.kodi/userdata && cd -'
alias odroid='ssh alarm@odroid'
alias kodi='ssh root@kodi'
alias removeunused='sudo pacman -Rns $(pacman -Qtdq)'
alias spot='spotify & blockify & sudo mv /etc/hosts /etc/hosts.tmp && sudo cp /etc/hosts.blank /etc/hosts && read -p "Press [Enter] to revert to normal hosts file" && sudo mv /etc/hosts.tmp /etc/hosts && kill $(pidof blockify) SIGTERM'

addtobeginningfunction() {
	for f in *.*; do mv "$f" "$1 - $f"; done
}

converttox264function() {
	ffmpeg -i "$1" -acodec copy -vcodec libx264 "$1-x264.mkv"
}

convertalltox264function() {
	for f in *.*; do ffmpeg -i "$f" -acodec copy -vcodec libx264 "$f-x264.mkv"; done
}

PS1='\[\033[34m\][\u@\h \W]\$\[\033[0m\] '
PROMPT_COMMAND=__prompt_command

__prompt_command() {
	local EXIT="$?"
	if [ $EXIT != 0 ]; then
		PS1='\[\033[31m\][\u@\h \W]\$\[\033[0m\] '
	else
		PS1='\[\033[34m\][\u@\h \W]\$\[\033[0m\] '
	fi
}

export LIBVA_DRIVER_NAME=vdpau
export VDPAU_DRIVER=radeonsi
export EDITOR=vim
export TERM=xterm-256color
