# Update ~/.bashrc prompt definition
parse_git_branch() {
     cur_dir=$(pwd)
     [ ${cur_dir:0:22} != "/home/ypiel/dev/github" ] && return
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

#parse_git_branch
if [ "$color_prompt" = yes ]; then
    PS1='\D{%F %T} ${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$\[\033[37m\]$(parse_git_branch)\[\033[00m\] '
else
    PS1='\D{%F %T} ${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

