High inode usage:
1. df -i
2. $du -s --inodes * | sort -rn
134669  proc
53819   usr
26186   sys
5612    var
3154    opt
809     etc
444     run
428     home
407     dev
325     boot
75      root

3. list of open files which are deleted
lsof | grep delete

Curl multiple hosts:
4. Test HTTP status of a DS: while true; do sleep 1; curl -s -o /dev/null -w "%{http_code}\n"  <domain-name>; done

Curl to see headers: 
5. curl -vs www.<domain-name>.com 2>&1 | sed '/^* /d; /bytes data]$/d; s/> //; s/< //'

Curl test multiple hosts:
6. for i in $(cat report.csv); do IP=$(echo ${i} |cut -d, -f2); HNAME=$(echo ${i} |cut -d, -f1); OUTPUT=$(curl -Ls -o /dev/null -w %{http_code}   https://<domain-name>.com/example.json --resolve <domain-name>.com:443:${IP} -6);echo "${HNAME} ${OUTPUT}"; done  


7. 
Try To Display Only The Process IDs of Lighttpd
```
# ps -C lighttpd -o pid=
OR
# pgrep lighttpd

OR
# pgrep -u anuj php-cgi
```


Print The Name of PID 55977
```
# ps -p 55977 -o comm=
```
Top 10 Memory Consuming Process
```
# ps -auxf | sort -nr -k 4 | head -10
```
Show Us Top 10 CPU Consuming Process
```
# ps -auxf | sort -nr -k 3 | head -10
```


Resources:
Useful tshoot cheatsheet: http://www.brendangregg.com/USEmethod/use-rosetta.html
https://syedali.net/engineer-interview-questions/
OS Book: https://0xax.gitbooks.io/linux-insides/content/Interrupts/linux-interrupts-1.html

Questions:
https://github.com/chassing/linux-sysadmin-interview-questions
Their answers:
https://jivoi.github.io/2016/01/22/linux-sysadm-devops-interview-questions/


Netflix Performance blog:
https://netflixtechblog.com/linux-performance-analysis-in-60-000-milliseconds-accc10403c55
http://www.brendangregg.com/usemethod.html
