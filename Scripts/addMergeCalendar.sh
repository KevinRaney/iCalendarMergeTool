#!/bin/bash

if ! [ -f .mergeCalendars ] || [ `cat .mergeCalendars | wc -l` -eq 0 ]
then
  touch .mergeCalendars
fi

if [ -z "$1" ]
then 
  cat ${0/.sh/.help}
  exit 1
fi

newCalendarKey=`openssl rand -base64 20 | md5`

echo "$1|$newCalendarKey|" >> .mergeCalendars

echo "Your new merged calendar has been added to the bottom of the .mergeCalendars file, please open the file and update the list of source calendars to merge"
