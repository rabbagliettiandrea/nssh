#!/bin/bash

rm -f /usr/local/bin/nssh
curl -s https://raw.githubusercontent.com/rabbagliettiandrea/nssh/main/nssh > /usr/local/bin/nssh
chmod +x /usr/local/bin/nssh
echo "Installation done"
