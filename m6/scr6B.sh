#!/bin/bash
    echo This script will help to answer some questions over an Apache log
    echo Pls indicate location of your log file, e.g.: /home/user/apache_logs.txt
read location
    function answers {
    echo 1. The most requests were from IP: $(less $location | cut -d' ' -f1 | sort | uniq -c | sort -nr | awk '{print $2}' | sed -n 1p)
    echo 2. The most requested page is: $(less $location | cut -d' ' -f7 | sort | uniq -c | sort -nr | awk '{print $2}' | sed -n 1p)
    echo 3. The following quantities of requests were from each IP:
awk '{print $1}' $location | sort | uniq -c | sort -nr
    echo 4. Clients reffered to the following non-existent pages:
grep "error" $location | cut -d' ' -f7 | sort | uniq
    echo 5. The most requests were at:
awk '{print substr($4,2,17)}' $location | sort | uniq -c | sort -nr | sed -n 1p
    echo 6. And the following search bots accessed the site, with their UA and IP:
grep bot $location | cut -d' ' -f1,12,14,15,16 | sort | uniq -c | grep --color bot/ -i
}
answers
