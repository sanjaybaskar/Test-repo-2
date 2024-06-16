# A shell script to check the EC2 instance load and send a email if it exceeds a certain thresold.

#! /bin/bash

TO_EMAIL = sanjaykumar.b1828@gmail.com

THRESOLD = "0.80"

LOAD_AVERAGE=$(uptime | awk -F 'average:' '{print$2}')

if (( $(LOAD_AVERAGE > $THRESOLD | bc -l) ))
then
SUBJECT = "ec2 INSTANCE ALERT"
MESSAGE = "lOAD EXCEEDS"
echo "MESSAGE" | mail -s "$SUBJECT" "TO_EMAIL"
fi

