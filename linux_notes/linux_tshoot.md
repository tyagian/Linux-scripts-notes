1. High inode usage:
 
```
 $ df -i
Filesystem      Inodes  IUsed   IFree IUse% Mounted on
udev            320118    438  319680    1% /dev
tmpfs           327888    823  327065    1% /run
/dev/sda1      1671168 531079 1140089   32% /
tmpfs           327888      8  327880    1% /dev/shm
tmpfs           327888      5  327883    1% /run/lock
tmpfs           327888     18  327870    1% /sys/fs/cgroup
/dev/loop0       12852  12852       0  100% /snap/core/8935
```
```
 $du -s --inodes * | sort -rn
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
```

3. list of open files which are deleted
```lsof | grep delete```
4.
Curl multiple hosts:
 Test HTTP status of a DS: `while true; do sleep 1; curl -s -o /dev/null -w "%{http_code}\n"  <domain-name>; done`

Curl to see headers: 
 `curl -vs www.<domain-name>.com 2>&1 | sed '/^* /d; /bytes data]$/d; s/> //; s/< //'`

Curl test multiple hosts:
 ```for i in $(cat report.csv); do IP=$(echo ${i} |cut -d, -f2); HNAME=$(echo ${i} |cut -d, -f1); OUTPUT=$(curl -Ls -o /dev/null -w %{http_code}   https://<domain-name>.com/example.json --resolve <domain-name>.com:443:${IP} -6);echo "${HNAME} ${OUTPUT}"; done  ```


5. 
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
7. iostat – Montor Linux average CPU load and disk activity
```
$iostat
avg-cpu:  %user   %nice %system %iowait  %steal   %idle
           3.50    0.09    0.51    0.03    0.00   95.86

Device:            tps   Blk_read/s   Blk_wrtn/s   Blk_read   Blk_wrtn
sda              22.04        31.88       512.03   16193351  260102868
sda1              0.00         0.00         0.00       2166        180
sda2             22.04        31.87       512.03   16189010  260102688
sda3              0.00         0.00         0.00       1615          0
```
8. sar – Monitor, collect and report Linux system activity
sar command used to collect, report, and save system activity information. To see network counter, enter:
# sar -n DEV | more
The network counters from the 24th:
# sar -n DEV -f /var/log/sa/sa24 | more
You can also display real time usage using sar:
```
# sar 4 5
06:45:12 PM       CPU     %user     %nice   %system   %iowait    %steal     %idle
06:45:16 PM       all      2.00      0.00      0.22      0.00      0.00     97.78
06:45:20 PM       all      2.07      0.00      0.38      0.03      0.00     97.52
06:45:24 PM       all      0.94      0.00      0.28      0.00      0.00     98.78
06:45:28 PM       all      1.56      0.00      0.22      0.00      0.00     98.22
06:45:32 PM       all      3.53      0.00      0.25      0.03      0.00     96.19
Average:          all      2.02      0.00      0.27      0.01      0.00     97.70
```


Resources:
Useful tshoot cheatsheet: http://www.brendangregg.com/USEmethod/use-rosetta.html
https://syedali.net/engineer-interview-questions/
OS Book: https://0xax.gitbooks.io/linux-insides/content/Interrupts/linux-interrupts-1.html

Linux monitoring tools: https://www.cyberciti.biz/tips/top-linux-monitoring-tools.html
Linux Server Hardening Security Tips: https://www.cyberciti.biz/tips/linux-security.html
Nginx best practices: https://www.cyberciti.biz/tips/linux-unix-bsd-nginx-webserver-security.html

Questions:
https://github.com/chassing/linux-sysadmin-interview-questions
Their answers:
https://jivoi.github.io/2016/01/22/linux-sysadm-devops-interview-questions/


Netflix Performance blog:
https://netflixtechblog.com/linux-performance-analysis-in-60-000-milliseconds-accc10403c55
http://www.brendangregg.com/usemethod.html
