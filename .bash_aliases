###########
# Aliases #
###########

# Show all aliases
alias ALIAS='cat ~/.bash_aliases'

# common
alias h='history'
alias ..='cd ..'
alias cd..='cd ..'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

#system
alias meminfo='free -m -l -t'           # system memory, cpu usage, and gpu memory info
alias psmem='ps auxf | sort -nr -k 4'   # get top process eating memory
alias pscpu='ps auxf | sort -nr -k 3'   # get top process eating cpu
alias cpuinfo='lscpu'                   # Get server cpu info

#custom
alias lt='ls --human-readable --size -1 -S --classify' # Sort by File Size
alias left='ls -t -1'                                  # Sort by Modification Time
alias count='find . -type f | wc -l'                   # Count Files in current folder
alias gh='history | grep'                              # Find a Command in Your Grep History
alias cpv='rsync -ah --info=progress2'                 # copy with progress bar
alias c='clear'                                        # clear
alias cg='cd `git rev-parse --show-toplevel`'          # cd to the top level of a Git project
alias wget='wget -c'                                   # Resume wget by default


###################
# GAP_SDK aliases #
###################

alias AI_DECK='cd ~/work/gap_sdk && source configs/ai_deck.sh && cd -'  # source AI-deck
alias GAP_SDK='cd ~/work/gap_sdk && source sourceme.sh && cd -'         # source GAP SDK
alias olimex='export GAPY_OPENOCD_CABLE=$HOME/work/gap_sdk/tools/gap8-openocd/tcl/interface/ftdi/olimex-arm-usb-ocd-h.cfg'
alias olimex4.0='export GAPY_OPENOCD_CABLE=$HOME/work/gap8_openocd/tcl/interface/ftdi/olimex-arm-usb-ocd-h.cfg'


##################
#  Make aliases  #
##################
alias ma='make all'
alias mc='make clean'
alias mca='make clean all'
alias mca8='make -j 8 clean all'
alias mcar='make clean all run'
alias mcac='make clean all cload'
alias mcac8='make -j 8 clean all && make cload'
alias cload='make cload'
alias cload_D5='CLOAD_ARGS="-w radio://0/70/2M/E7E7E7E7D5" make cload'
alias mcac8_D5='make -j 8 clean all && CLOAD_ARGS="-w radio://0/70/2M/E7E7E7E7D5" make cload'
alias cload_E7='CLOAD_ARGS="-w radio://0/80/2M/E7E7E7E7E7" make cload'
alias mcac8_E7='make -j 8 clean all && CLOAD_ARGS="-w radio://0/80/2M/E7E7E7E7E7" make cload'
