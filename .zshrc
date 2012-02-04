# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="nicoulaj"

plugins=(git extract vi-mode virtualenvwrapper autojump)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/homes/je08/bin:/homes/je08/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

# Set library path to let binaries find libraries installed in non standard locations
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/homes/je08/lib

# YAEY this doesn't exist otherwise
export CONDOR_HOME="/usr/local/condor/release"

alias open="gnome-open"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

# Setup Maxeler toolkit
unsetopt EQUALS
source /vol/cc/opt/Xilinx/13.3/ISE_DS/settings64.sh
setopt EQUALS
export LM_LICENSE_FILE=27000@chicken:1717@lanner
export MAXCOMPILERDIR=/vol/cc/opt/maxeler/maxcompiler-2011.3/
export MAXELEROSDIR=$MAXCOMPILERDIR/lib/maxeleros-sim
export LD_PRELOAD=$MAXELEROSDIR/lib/libmaxeleros.so:$LD_PRELOAD
export PATH=/vol/cc/opt/maxeler/maxcompiler-2011.3/bin:$PATH
