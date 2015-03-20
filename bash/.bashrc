export EDITOR=/usr/bin/vim
export HISTSIZE=100000

# Loads from .alias
test -s ~/.alias && . ~/.alias || true


FREEMEMNAS=$(df -h /nas/ | grep "nas" | awk '{print $4}')

if [[ -z "$LOADED" ]] ; then
case "$-" in
    *i*) echo "Free Memory on Casper : $FREEMEMNAS" 1>&2
         export LOADED="DONE" ;
esac
fi


PS1="\h:\w>"

export GOROOT=$HOME/local/go
PATH=$PATH:"${HOME}/local/go/bin:$HOME/apps/bin":"$HOME/bin":"/unsafe/jdelanno/INSTALL_PERSO/grace/bin/"


. /usr/share/modules/init/bash
module load gcc
module load fftw

#
#mtnp=$( qq 2> /dev/null )
#if [ $? -eq 0 ] ; then
        #mtnll=$( tail -n 1 ~/boulets | cut -f 1 )
        #mtnd=$( date +"%Y%m%d %H%M") ;
        #if [ "$mtnll" != "$mtnd" ] ; then
                #mtnp=$( echo -e "$mtnp" | tail -n -1 | cut -f 5 -d' ' | awk -F/ '{ print $1"\t"$2"\t"($1/$2) }' ) ;
                #mtnn=$( pbsn | tail -n -5 | head -n 1 | cut -f 7,9 -d' ' )
                #mtna=$( qstat -t | grep Q | grep -v "\[\]" | wc -l )
        #echo -e "$mtnd\t$mtnp\t$mtnn\t$mtna" >> ~/boulets
        #fi
        #fi
#


# The following autoset the display variable
if [[ -z "$DISPLAY" ]] ; then
#    echo "DISPLAY not set... yet !" 1>&2;
    op=$(ps aux | grep VNC | grep $UID | awk '{print $12}' | grep ":")
    if [[ -z "$op" ]] ; then
       op="" ;
    else
        lp="export DISPLAY=${HOST}$op"
        echo "Already connected on this node. Mapping the display of this terminal to ${HOST}$op" 1>&2 ;
        eval "$lp"
    fi
fi
