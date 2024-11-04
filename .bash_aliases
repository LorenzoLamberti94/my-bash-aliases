###########
# Aliases #
###########

# Show all aliases
alias ALIAS='cat ~/.bash_aliases'
alias ALIAS_EDIT='vi ~/.bash_aliases'
alias GIT_HELP='cat ~/HELP/.git_help'
alias CONDA_HELP='cat ~/HELP/.conda_help'
alias ALIAS_GIT='git --list-cmds=alias'
alias SSH_HELP='cat ~/HELP/.ssh_help'
alias CHMOD_HELP='cat ~/HELP/.chmod_help'

# bashrc
alias cat-bashrc='cat ~/.bashrc'
alias source-bashrc='source ~/.bashrc'

#ZSH
alias cat-zshrc='cat ~/.zshrc'
alias edit-zshrc='vi ~/.zshrc'
alias source-zshrc='source ~/.zshrc'

# common
alias h='history'
alias ..='cd ..'
alias cd..='cd ..'
alias ll='LC_COLLATE=C ls -alF'
alias la='ls -A'
alias l='ls -CF'

#system
alias btw='neofetch'
alias meminfo='free -m -l -t'           # system memory, cpu usage, and gpu memory info
alias psmem='ps auxf | sort -nr -k 4'   # get top process eating memory
alias pscpu='ps auxf | sort -nr -k 3'   # get top process eating cpu
alias cpuinfo='lscpu'                   # Get server cpu info
alias system_architecture='uname -m'
alias ubuntu_version='lsb_release -a'

#custom
alias lt='ls --human-readable --size -1 -S --classify' # Sort by File Size
alias left='ls -t -1'                                  # Sort by Modification Time
alias count='find . -type f | wc -l'                   # Count Files in current folder
alias gh='history | grep'                              # Find a Command in Your Grep History
alias cpv='rsync -ah --info=progress2'                 # copy with progress bar
alias c='clear'                                        # clear
alias cg='cd `git rev-parse --show-toplevel`'          # cd to the top level of a Git project
alias wget='wget -c'                                   # Resume wget by default
alias vnc-show='ps -ef|grep vnc'			 # show all vnc sessions active
alias PRINT_ENV_VAR='( setopt posixbuiltin; set; ) | less'

#clipboard
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias copypath='pwd|pbcopy'

#plugins
alias cat='bat --style=plain'

# Ubuntu extensions
alias reset_wintile='source /home/lamberti/work/setup/reset_wintile.sh'

###################
# GAP_SDK aliases #
###################
# general
alias SOURCEME='cd ~/work/gap_sdk && source sourceme.sh && cd -'         # source GAP SDK

# gap_sdk
alias GAP_SDK='cd ~/work/gap_sdk && source configs/ai_deck.sh && cd -'   # source AI-deck
alias olimex='export GAPY_OPENOCD_CABLE=$HOME/work/gap_sdk/tools/gap8-openocd/tcl/interface/ftdi/olimex-arm-usb-ocd-h.cfg'
alias olimex4.0='export GAPY_OPENOCD_CABLE=$HOME/gap8_openocd/tcl/interface/ftdi/olimex-arm-usb-ocd-h.cfg'

alias GAP_SDK3.9='cd ~/work/gap_sdk3.9 && source configs/ai_deck.sh && cd -'         # source GAP SDK
alias olimex3.9='export GAPY_OPENOCD_CABLE=$HOME/work/gap_sdk3.9/tools/gap8-openocd/tcl/interface/ftdi/olimex-arm-usb-ocd-h.cfg'

##################
#  Make aliases  #
##################
alias mc='make clean'
alias ma='make all'
alias mr='make run'
alias mca='make clean all'
alias mca8='make -j 8 clean all'
alias mcar='make clean all run'

#####################
#  CF Make aliases  #
#####################
alias mcac='make clean all cload'
alias mcac8='make -j 8 clean all && make cload'
alias cload='make cload'
alias cload_D5='CLOAD_ARGS="-w radio://0/80/2M/E7E7E7E7D5" make cload'
alias mcac8_D5='make -j 8 clean all && CLOAD_ARGS="-w radio://0/80/2M/E7E7E7E7D5" make cload'
alias cload_E7='CLOAD_ARGS="-w radio://0/80/2M/E7E7E7E7E7" make cload'
alias mcac8_E7='make -j 8 clean all && CLOAD_ARGS="-w radio://0/80/2M/E7E7E7E7E7" make cload'

##############
#  CF UTILS  #
##############
# alias cfclient='conda activate cfclient && cfclient'

#############
#  ARDUINO  #
#############
alias arduino='~/work/arduino-ide &'


###################
# SSH aliases #
###################
alias ssh_compute='ssh -X lamberti@compute.eees.dei.unibo.it'
alias ssh_compute_tunnel='ssh -X -L 5901:localhost:5901 lamberti@compute.eees.dei.unibo.it'
alias ssh_gpu='ssh -X lamberti@gpu.eees.dei.unibo.it'
alias ssh_137='ssh -X lamberti@137.204.213.247'
alias ssh_polaris='ssh -X lamberti@137.204.213.217'
alias ssh_guacamole='ssh -L 8443:localhost:8443 compute.eees.dei.unibo.it'
alias ssh_micrellab='ssh -X micrellab@compute.eees.dei.unibo.it'
alias ssh_sassauna1='ssh -X llamberti@sassauna1.ee.ethz.ch'


###################
#       ROS       #
###################

alias source_ros='source /opt/ros/noetic/setup.bash'


# Funny
alias isweat='sudo'
alias please='sudo'
