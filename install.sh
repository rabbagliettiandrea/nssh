#!/bin/bash

YUM_CMD=$(which yum)
APT_GET_CMD=$(which apt-get)

if [[ ! -z $YUM_CMD ]]; then
    yum install -y dialog
elif [[ ! -z $APT_GET_CMD ]]; then
    apt-get install -y dialog
else
    echo "error can't install package dialog"
    exit 1;
fi

rm -f /usr/local/bin/nssh
curl -s https://raw.githubusercontent.com/rabbagliettiandrea/nssh/main/nssh > /usr/local/bin/nssh
chmod +x /usr/local/bin/nssh
echo "Installation done"
