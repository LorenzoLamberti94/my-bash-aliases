###########
# Aliases #
###########

# better cat
alias cat='batcat --style=plain'

# Show all aliases
alias ALIAS='cat ~/SETUP/my-bash-aliases/.bash_aliases'
alias ALIAS_EDIT='vi ~/SETUP/my-bash-aliases/.bash_aliases'
alias SSH='cat ~/.ssh/config'
alias SSH_EDIT='vi ~/.ssh/config'

alias HELP_GIT='cat ~/SETUP/my-bash-aliases/HELP/.git_help'
alias HELP_CONDA='cat ~/SETUP/my-bash-aliases/HELP/.conda_help'
alias ALIAS_GIT='git --list-cmds=alias'
alias HELP_SSH='cat ~/SETUP/my-bash-aliases/HELP/.ssh_help'
alias HELP_CHMOD='cat ~/SETUP/my-bash-aliases/HELP/.chmod_help'
alias HELP_IIS='cat ~/SETUP/my-bash-aliases/HELP/.iis_help'

# bashrc
alias cat-bashrc='cat ~/.bashrc'
alias source-bashrc='source ~/.bashrc'

# ZSH
alias cat-zshrc='cat ~/.zshrc'
alias edit-zshrc='vi ~/.zshrc'
alias source-zshrc='source ~/.zshrc'

# ssh
alias cat-ssh-config='cat ~/.ssh/config'
alias edit-ssh-config='vi ~/.ssh/config'

# hibernate
alias hibernate='sudo systemctl hibernate'

# common
alias h='history'
alias ..='cd ..'
alias cd..='cd ..'
alias ll='LC_COLLATE=C ls -ahlF'
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

# Ubuntu extensions
alias reset_wintile='source /home/lamberti/work/setup/reset_wintile.sh'

# touchscreen
alias touchscreen_off='xinput disable "ELAN901C:00 04F3:2C29"'
alias touchscreen_on='xinput enable "ELAN901C:00 04F3:2C29"'

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
alias arduino='~/Arduino/arduino-ide &'


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
alias ssh_sassauna1='ssh -X llamber@sassauna1.ee.ethz.ch'


###################
#       ROS       #
###################

alias source_ros='source /opt/ros/noetic/setup.bash'


###################
#       ESP       #
###################

esp() {
    # Usage: esp [ESP_SDK_VERSION [UBUNTU_VERSION]]
    ESP_SDK_VERSION=${1:-5.3.3} UBUNTU_VERSION=${2:-22.04}

    # Only needed to flash over UART (adjust based on your USB UART adapter)
    ESP_SERIAL_PORT="/dev/serial/by-id/usb-FTDI_TTL232R-3V3_FTBRY9JL-if00-port0"
    ESP_SERIAL=$(docker_serial "$ESP_SERIAL_PORT")

    echo $ESP_SERIAL
    docker run \
        --rm -it \
        -v "${PWD}:/module/data/" \
        -P \
        --device-cgroup-rule="c 189:* rmw" -v /dev/bus:/dev/bus:ro -v /dev/serial:/dev/serial:ro \
        --device-cgroup-rule="c 188:* rmw" -v /dev/ttyUSB0:/dev/ttyUSB0:ro\
        registry.gitlab.com/eliacereda/espidf:${UBUNTU_VERSION}-${ESP_SDK_VERSION} \
        /bin/bash -c "
            echo \"export PS1='\e[1;34m[esp:${UBUNTU_VERSION}-${ESP_SDK_VERSION} \w]\$ \e[0m'\" >> /root/.bashrc; \
            source /esp/esp-idf/export.sh; \
            cd /module/data/; \
            bash
        "
}

docker_serial() {
    SERIAL_PORT="$1"
    SERIAL_DEV=$(realpath -e "$SERIAL_PORT")

    if [[ ! -z ${SERIAL_DEV} ]]; then
        echo "-v ${SERIAL_DEV}:${SERIAL_DEV}:ro"
    fi
}


gap9() {
    # Usage: gap9 [GAP_SDK_VERSION [GAP_CONFIG [UBUNTU_VERSION]]]
    GAP_SDK_VERSION=${1:-5.20.4} GAP_CONFIG=${2:-gap9_evk_audio} UBUNTU_VERSION=${3:-22.04}

    docker run \
        --rm -it \
        -v "${PWD}:/module/data/" \
        -P \
        --device-cgroup-rule="c 189:* rmw" -v /dev/bus:/dev/bus:ro -v /dev/serial:/dev/serial:ro \
        registry.gitlab.com/eliacereda/gapsdk-private:${UBUNTU_VERSION}-${GAP_SDK_VERSION} \
        /bin/bash -c "
            echo \"export PS1='\e[1;32m[gap9:${UBUNTU_VERSION}-${GAP_SDK_VERSION}-${GAP_CONFIG} \w]\$ \e[0m'\" >> /root/.bashrc; \
            # export GAPY_OPENOCD_CABLE=/gap_sdk/utils/openocd_tools/tcl/gapuino_ftdi.cfg; \
            export GAPY_OPENOCD_CABLE=/gap_sdk/utils/openocd/tcl/interface/ftdi/olimex-arm-usb-ocd-h.cfg
            source /venv/bin/activate; \
            source /gap_sdk/configs/${GAP_CONFIG}.sh; \
            cd /module/data/; \
            bash
        "
}



# Funny
alias isweat='sudo'
alias please='sudo'
