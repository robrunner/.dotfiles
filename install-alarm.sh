#!/bin/sh
#
# Usage:
#
#    sh install.sh
#
# Environment variables: VERBOSE, CP, LN, MKDIR, RM, DIRNAME, XARGS.
#
#    env VERBOSE=1 sh install.sh
#
# DO NOT EDIT THIS FILE
# 
# This file is generated by rcm(7) as:
#
#   rcup -B 0 -g
#
# To update it, re-run the above command.
#
: ${VERBOSE:=0}
: ${CP:=/bin/cp}
: ${LN:=/bin/ln}
: ${MKDIR:=/bin/mkdir}
: ${RM:=/bin/rm}
: ${DIRNAME:=/usr/bin/dirname}
: ${XARGS:=/usr/bin/xargs}
verbose() {
  if [ "$VERBOSE" -gt 0 ]; then
    echo "$@"
  fi
}
handle_file_cp() {
  if [ -e "$2" ]; then
    printf "%s " "overwrite $2? [yN]"
    read overwrite
    case "$overwrite" in
      y)
        $RM -rf "$2"
        ;;
      *)
        echo "skipping $2"
        return
        ;;
    esac
  fi
  verbose "'$1' -> '$2'"
  $DIRNAME "$2" | $XARGS $MKDIR -p
  $CP -R "$1" "$2"
}
handle_file_ln() {
  if [ -e "$2" ]; then
    printf "%s " "overwrite $2? [yN]"
    read overwrite
    case "$overwrite" in
      y)
        $RM -rf "$2"
        ;;
      *)
        echo "skipping $2"
        return
        ;;
    esac
  fi
  verbose "'$1' -> '$2'"
  $DIRNAME "$2" | $XARGS $MKDIR -p
  $LN -sf "$1" "$2"
}
handle_file_ln "/home/alarm/.dotfiles/bashrc" "/home/alarm/.bashrc"
handle_file_ln "/home/alarm/.dotfiles/conkyrc" "/home/alarm/.conkyrc"
handle_file_ln "/home/alarm/.dotfiles/gitconfig" "/home/alarm/.gitconfig"
handle_file_ln "/home/alarm/.dotfiles/install.sh" "/home/alarm/.install.sh"