#		Custome aliases to be included by Bash

# ls options:
#	-h				human readable sizes (powers of 1024)
#	-F --classify	append indicator (one of */=>@|) to entries
alias ls='ls --color=auto -hF --group-directories-first'
alias dir='dir --color=auto -hF'
alias vdir='vdir --color=auto -hF'

alias grep='grep --color=auto'

alias ++='pushd .'
alias +++='pushd'
alias _='popd'
alias ..='cd ..'
alias ...='cd ../..'
alias dirs='dirs -v'

# -v verbose
alias mkdir='mkdir -v'
alias rm='rm -vI'	# prompt once before removing more than three files, or when removing recursively
alias cp='cp -v'
alias mv='mv -v'

alias ln='ln -v'

alias chmod='chmod -v'	# There's also -c --changes
alias chown='chown -v'
alias chgrp='chgrp -v'

# -s --report-identical-files
alias diff='diff --color=auto'	# --report-identical-files

# Don't really need it. Theres `apt` for interactive use
#alias apt-get='apt-get --show-progress'

# -c	--color		Interpret ANSI color and style sequences
alias watch='watch --color'

# -c color
# -h human-readable
alias ip='ip -color -h'

# options:
#	-h		human readable sizes
alias free='free -h'
alias df='df -h'
alias du='du -h --total'	# -c --total	Produce a grand total

alias beep='echo -en "\007"'

alias fdisk='fdisk --color=auto'
alias cfdisk='cfdisk --color=auto'
alias sfdisk='sfdisk --color=auto'

alias less='less -M'


#######   AWS   #######
alias s3='aws s3'
alias s3ls='aws  s3  ls --human-readable --summarize'
