#!/bin/usr/bash

## create a script that copies the contents of the log file /var/log/messages to /var/log/messages.old and deletes the contents
## /var/log/messages file

cp /var/log/messages /var/log/messages.old
cat /dev/null > /var/log/messages
echo log file copied and cleaned up

exit 0 



