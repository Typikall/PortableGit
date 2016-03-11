# Some good standards, which are not used if the user
# creates his/her own .bashrc/.bash_profile

# --show-control-chars: help showing Korean or accented characters
alias ls='ls -F --color=auto --show-control-chars'
alias ll='ls -l'

case "$TERM" in
xterm*)
	# The following programs are known to require a Win32 Console
	# for interactive usage, therefore let's launch them through winpty
	# when run inside `mintty`.
	for name in node ipython php php5 psql python2.7
	do
		case "$(type -p "$name".exe 2>/dev/null)" in
		''|/usr/bin/*) continue;;
		esac
		alias $name="winpty $name.exe"
	done
	;;
esac

# Alias commande
#==============
# Alias commande
alias ssh='ssh -l PR271F5N'
alias lssip='cat $HOME/prakotoarisoa/sipsir/list_sipsir'
alias lscac2='cat $HOME/prakotoarisoa/caccia/list_caccia2'
alias cacverif='$HOME/prakotoarisoa/caccia/./cac_verif.sh'
alias sipverif='$HOME/prakotoarisoa/sipsir/./sip_verif.sh'
#alias ssh='ssh() {echo -ne "\033]0;${@: -1}\007";exec ssh $@}'
alias ls='ls --color=auto'
# Alias acces serveur
alias noe921rs='ssh admsrv@noe921rs'
alias noeyyxhu='ssh admsrv@noeyyxhu'
alias noeyyxhv='ssh admsrv@noeyyxhv'
alias pcyyj10p6='ssh admsrv@pcyyj10p6'
alias noeyyxj6='ssh admsrv@noeyyxj6'
alias clay71avm='ssh admsrv@clay71avm'
alias clay73mvm='ssh root@clay73mvm'

