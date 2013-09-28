#!/bin/ksh
if [ $# -ne "1" ] || [ "$1" != "install"  ] && [ "$1" != "save"  ]
then
    echo "usage :"
    echo "   $0 install | save "
    exit
fi

if [ "$1" == "install" ]
then
    SOURCE=./
    DEST=~/
else
    SOURCE=~/
    DEST=./
fi

set -A LISTFILE .bashrc .vimrc .zshrc .tmux.conf
set -A LISTDIR  .vim

for I in ${LISTFILE[@]}
do
    cp $SOURCE$I $DEST$I
done

for I in ${LISTDIR[@]}
do
    cp -R $SOURCE$I $DEST$I
done

