General Questions:
https://srvfail.com/linux-interview-questions/


What did you learn yesterday/this week?
Talk about your preferred development/administration environment. (OS, Editor, Browsers, Tools etc.)
Tell me about the last major Linux project you finished.
Tell me about the biggest mistake you've made in [some recent time period] and how you would do it differently today. What did you learn from this experience?
Why we must choose you?
What function does DNS play on a network?
- Domain name service used to create a name record of an IP address
What is HTTP?
- HTTP is a web service protocol. 
What is an HTTP proxy and how does it work?
https://www.watchguard.com/training/fireware/82/httppro2.htm
https://stackoverflow.com/questions/7155529/how-does-http-proxy-work

Describe briefly how HTTPS works.
https://learn.onemonth.com/understanding-http-basics/

What is SMTP? Give the basic scenario of how a mail message is delivered via SMTP.
https://www.afternerd.com/blog/smtp/

What is RAID? What is RAID0, RAID1, RAID5, RAID10?
(redundant array of independent disks)
https://www.prepressure.com/library/technology/raid
https://www.computerhope.com/jargon/r/raid.htm

What is a level 0 backup? What is an incremental backup?
https://web.stanford.edu/dept/itss/docs/oracle/10gR2/backup.102/b14191/rcmconc1005.htm

Describe the general file system hierarchy of a Linux system.
https://www.linuxjournal.com/content/filesystem-hierarchy-standard

Which difference have between public and private SSH key?
https://www.geeksforgeeks.org/difference-between-private-key-and-public-key/

Simple Linux Questions:
What is the name and the UID of the administrator user?
root, uid == 0
https://superuser.com/questions/626843/does-the-root-account-always-have-uid-gid-0

How to list all files, including hidden ones, in a directory?
ls -la

What is the Unix/Linux command to remove a directory and its contents?
rm 
Which command will show you free/used memory? Does free memory exist on Linux?
free. Free memory as in unused? Very little. Any memory not used by a program is used to cache disk.
https://linuxize.com/post/free-command-in-linux/
https://www.linuxatemyram.com/

How to search for the string "my konfu is the best" in files of a directory recursively?
grep -r "my konfu is the best" <dir_path>

How to connect to a remote server or what is SSH?
https://blog.robertelder.org/what-is-ssh/
https://www.hostinger.com/tutorials/ssh-tutorial-how-does-ssh-work

How to get all environment variables and how can you use them?
env
https://linuxize.com/post/how-to-set-and-list-environment-variables-in-linux/

I get "command not found" when I run ifconfig -a. What can be wrong?
Try id addr
or $yum install net-tools // to install ifconfig and other network package
or  $ locate ifconfig // to find the default path of ifconfig. Then, set environment variable to fix it 


What happens if I type TAB-TAB?
https://www.thegeekstuff.com/2013/12/bash-completion-complete/
https://superuser.com/questions/445030/unix-tab-tab-equivalent

What command will show the available disk space on the Unix/Linux system?
df -h

What commands do you know that can be used to check DNS records?
dig
host 

What Unix/Linux commands will alter a files ownership, files permissions?
chown, chmod

What does chmod +x FILENAME do?
chmod +x on a file (your script) only means, that you'll make it executable

What does the permission 0750 on a file mean?
https://chmodcommand.com/chmod-0750/
What does the permission 0750 on a directory mean?
https://chmodcommand.com/chmod-0750/

How to add a new system user without login permissions?
https://unix.stackexchange.com/questions/153225/what-steps-to-add-a-user-to-a-system-without-using-useradd-adduser

How to add/remove a group from a user?

What is a bash alias?
https://linuxize.com/post/how-to-create-bash-aliases/

How do you set the mail address of the root/a user?
https://anandarajpandey.com/2014/09/10/how-to-change-default-root-email-address-linux-postfix-centos/

What does CTRL-c do?
Linux, and Unix, Ctrl+C is used to send a SIGINT signal, which cancels or terminates the currently running program. For example, if a script or program is frozen or stuck in an infinite loop pressing Ctrl+C cancels that command and return you to the command line.
https://askubuntu.com/questions/510811/what-is-the-difference-between-ctrl-z-and-ctrl-c-in-the-terminal

What does CTRL-d do?
https://www.howtogeek.com/howto/ubuntu/keyboard-shortcuts-for-bash-command-shell-for-ubuntu-debian-suse-redhat-linux-etc/
What does CTRL-z do?
https://www.howtogeek.com/howto/ubuntu/keyboard-shortcuts-for-bash-command-shell-for-ubuntu-debian-suse-redhat-linux-etc/

What is in /etc/services?
https://www.lifewire.com/what-is-etc-services-2196940
https://www.cs.clemson.edu/course/cpsc424/material/TCP%20UDP%20Services/etc-services.pdf


How to redirect STDOUT and STDERR in bash? (> /dev/null 2>&1)

What is the difference between UNIX and Linux.
https://www.softwaretestinghelp.com/unix-vs-linux/

What is the difference between Telnet and SSH?
telnet - plain text
ssh - secure shell

Explain the three load averages and what do they indicate. What command can be used to view the load averages?
- uptime
http://www.brendangregg.com/blog/2017-08-08/linux-load-averages.html
https://scoutapm.com/blog/understanding-load-averages
https://www.tecmint.com/understand-linux-load-averages-and-monitor-performance/

Can you name a lower-case letter that is not a valid option for GNU ls?
- e, j
https://quizlet.com/211479328/linux-sysadmin-interview-questions-flash-cards/

What is a Linux kernel module?


Walk me through the steps in booting into single user mode to troubleshoot a problem.
Walk me through the steps you'd take to troubleshoot a 404 error on a web application you administer.
What is ICMP protocol? Why do you need to use?
[⬆] Medium Linux Questions:
What do the following commands do and how would you use them?
tee
awk
tr
cut
tac
curl
wget
watch
head
tail
less
cat
touch
sar
netstat
tcpdump
lsof
What does an & after a command do?
What does & disown after a command do?
What is a packet filter and how does it work?
What is Virtual Memory?
What is swap and what is it used for?
What is an A record, an NS record, a PTR record, a CNAME record, an MX record?
Are there any other RRs and what are they used for?
What is a Split-Horizon DNS?
What is the sticky bit?
What does the immutable bit do to a file?
What is the difference between hardlinks and symlinks? What happens when you remove the source to a symlink/hardlink?
What is an inode and what fields are stored in an inode?
How to force/trigger a file system check on next reboot?
What is SNMP and what is it used for?
What is a runlevel and how to get the current runlevel?
What is SSH port forwarding?
What is the difference between local and remote port forwarding?
What are the steps to add a user to a system without using useradd/adduser?
What is MAJOR and MINOR numbers of special files?
Describe the mknod command and when you'd use it.
Describe a scenario when you get a "filesystem is full" error, but 'df' shows there is free space.
Describe a scenario when deleting a file, but 'df' not showing the space being freed.
Describe how 'ps' works.
What happens to a child process that dies and has no parent process to wait for it and what’s bad about this?
Explain briefly each one of the process states.
How to know which process listens on a specific port?
What is a zombie process and what could be the cause of it?
You run a bash script and you want to see its output on your terminal and save it to a file at the same time. How could you do it?
Explain what echo "1" > /proc/sys/net/ipv4/ip_forward does.
Describe briefly the steps you need to take in order to create and install a valid certificate for the site https://foo.example.com.
Can you have several HTTPS virtual hosts sharing the same IP?
What is a wildcard certificate?
Which Linux file types do you know?
What is the difference between a process and a thread? And parent and child processes after a fork system call?
What is the difference between exec and fork?
What is "nohup" used for?
What is the difference between these two commands?
myvar=hello
export myvar=hello
How many NTP servers would you configure in your local ntp.conf?
What does the column 'reach' mean in ntpq -p output?
You need to upgrade kernel at 100-1000 servers, how you would do this?
How can you get Host, Channel, ID, LUN of SCSI disk?
How can you limit process memory usage?
What is bash quick substitution/caret replace(^x^y)?
Do you know of any alternative shells? If so, have you used any?
What is a tarpipe (or, how would you go about copying everything, including hardlinks and special files, from one server to another)?
How can you tell if the httpd package was already installed?
How can you list the contents of a package?
How can you determine which package is better: openssh-server-5.3p1-118.1.el6_8.x86_64 or openssh-server-6.6p1-1.el6.x86_64 ?
Can you explain to me the difference between block based, and object based storage?



[⬆] Hard Linux Questions:
What is a tunnel and how you can bypass a http proxy?
What is the difference between IDS and IPS?
What shortcuts do you use on a regular basis?
What is the Linux Standard Base?

What is an atomic operation?
https://www.youtube.com/watch?v=Bh-V04jRwpo
https://stackoverflow.com/questions/52196678/what-are-atomic-operations-for-newbies
https://preshing.com/20130618/atomic-vs-non-atomic-operations/

Your freshly configured http server is not running after a restart, what can you do?
https://upcloud.com/community/tutorials/fix-common-problems-apache2/

What kind of keys are in ~/.ssh/authorized_keys and what it is this file used for?
Allow ssh access by adding public keys to this file
https://www.ssh.com/ssh/authorized_keys/

I've added my public ssh key into authorized_keys but I'm still getting a password prompt, what can be wrong?
-Could be permission issues
You need to verify the permissions of the authorized_keys file and the folder / parent folders in which it is located.

chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys
chmod go-w ~
 or

In /etc/ssh/sshd_config set `passwordAuthentication yes` to let server temporary accept password authentication


Did you ever create RPM's, DEB's or solaris pkg's?
https://www.thegeekstuff.com/2015/02/rpm-build-package-example/


What does :(){ :|:& };: do on your system?
https://www.cyberciti.biz/faq/understanding-bash-fork-bomb/


How do you catch a Linux signal on a script?
using `trap` command
https://unix.stackexchange.com/questions/153922/how-to-catch-a-signal-in-command-line
https://mywiki.wooledge.org/SignalTrap
https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_12_01.html

Can you catch a SIGKILL?
 It cannot be handled or ignored, and is therefore always fatal. It is also not possible to block this signal.
Good one: https://www.win.tue.nl/~aeb/linux/lk/lk-5.html
https://www.systutorials.com/catching-the-signal-sent-by-kill-in-c-on-linux/
https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_12_01.html
https://unix.stackexchange.com/questions/485644/what-does-a-program-do-when-its-sent-sigkill-signal

What's happening when the Linux kernel is starting the OOM killer and how does it choose which process to kill first?
https://unix.stackexchange.com/questions/153585/how-does-the-oom-killer-decide-which-process-to-kill-first

Describe the linux boot process with as much detail as possible, starting from when the system is powered on and ending when you get a prompt.

What's a chroot jail?
https://www.thegeekdiary.com/understanding-chroot-jail/

When trying to umount a directory it says it's busy, how to find out which PID holds the directory?
https://unix.stackexchange.com/questions/107885/busy-device-on-umount/107887


What's LD_PRELOAD and when it's used?
https://blog.jessfraz.com/post/ld_preload/


You ran a binary and nothing happened. How would you debug this?
https://unix.stackexchange.com/questions/418354/understanding-what-a-linux-binary-is-doing

What are cgroups? Can you specify a scenario where you could use them?
https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/resource_management_guide/ch01
https://developers.redhat.com/blog/2015/09/21/controlling-resources-with-cgroups-for-performance-testing/

https://www.linuxjournal.com/content/everything-you-need-know-about-linux-containers-part-i-linux-control-groups-and-process

How can you remove/delete a file with file-name consisting of only non-printable/non-type-able characters?

How can you increase or decrease the priority of a process in Linux?
https://developer.ibm.com/technologies/linux/tutorials/l-lpic1-103-6/
https://www.nixtutor.com/linux/changing-priority-on-linux-processes/
https://www.thegeekstuff.com/2013/08/nice-renice-command-examples/

[⬆] Expert Linux Questions:

https://jivoi.github.io/2016/01/22/linux-sysadm-devops-interview-questions/
A running process gets EAGAIN: Resource temporarily unavailable on reading a socket. How can you close this bad socket/file descriptor without killing the process?

What do you control with swapiness?
https://www.howtoforge.com/tutorial/linux-swappiness/

How do you change TCP stack buffers? How do you calculate it?
http://www.linux-admins.net/2010/09/linux-tcp-tuning.html
https://www.cyberciti.biz/faq/linux-tcp-tuning/

What is Huge Tables? Why isn't it enabled by default? Why and when use it?
https://access.redhat.com/solutions/46111
https://blog.nelhage.com/post/transparent-hugepages/

What is LUKS? How to use it?
https://www.cyberciti.biz/hardware/howto-linux-hard-disk-encryption-with-luks-cryptsetup-command/

[⬆] Networking Questions:
https://jivoi.github.io/2016/01/22/linux-sysadm-devops-interview-questions/
What is localhost and why would ping localhost fail?
What is the similarity between "ping" & "traceroute" ? How is traceroute able to find the hops.
What is the command used to show all open ports and/or socket connections on a machine?
Is 300.168.0.123 a valid IPv4 address?
Which IP ranges/subnets are "private" or "non-routable" (RFC 1918)?
What is a VLAN?
What is ARP and what is it used for?
What is the difference between TCP and UDP?
What is the purpose of a default gateway?
What is command used to show the routing table on a Linux box?
A TCP connection on a network can be uniquely defined by 4 things. What are those things?
When a client running a web browser connects to a web server, what is the source port and what is the destination port of the connection?
How do you add an IPv6 address to a specific interface?
You have added an IPv4 and IPv6 address to interface eth0. A ping to the v4 address is working but a ping to the v6 address gives you the response sendmsg: operation not permitted. What could be wrong?
What is SNAT and when should it be used?
Explain how could you ssh login into a Linux system that DROPs all new incoming packets using a SSH tunnel.
How do you stop a DDoS attack?
How can you see content of an ip packet?
What is IPoAC (RFC 1149)?
What will happen when you bind port 0?


[⬆] MySQL questions:
How do you create a user?
How do you provide privileges to a user?
What is the difference between a "left" and a "right" join?
Explain briefly the differences between InnoDB and MyISAM.
Describe briefly the steps you need to follow in order to create a simple master/slave cluster.
Why should you run "mysql_secure_installation" after installing MySQL?
How do you check which jobs are running?
How would you take a backup of a MySQL database?


[⬆] DevOps Questions:
Can you describe your workflow when you create a script?
What is GIT?
What is a dynamically/statically linked file?
What does "./configure && make && make install" do?
What is puppet/chef/ansible used for?
What is Nagios/Zenoss/NewRelic used for?
What is Jenkins/TeamCity/GoCI used for?
What is the difference between Containers and VMs?
How do you create a new postgres user?
What is a virtual IP address? What is a cluster?
How do you print all strings of printable characters present in a file?
How do you find shared library dependencies?
What is Automake and Autoconf?
./configure shows an error that libfoobar is missing on your system, how could you fix this, what could be wrong?
What are the advantages/disadvantages of script vs compiled program?
What's the relationship between continuous delivery and DevOps?
What are the important aspects of a system of continuous integration and deployment?
How would you enable network file sharing within AWS that would allow EC2 instances in multiple availability zones to share data?

[⬆] Fun Questions:
A careless sysadmin executes the following command: chmod 444 /bin/chmod - what do you do to fix this?
I've lost my root password, what can I do?
I've rebooted a remote server but after 10 minutes I'm still not able to ssh into it, what can be wrong?
If you were stuck on a desert island with only 5 command-line utilities, which would you choose?
You come across a random computer and it appears to be a command console for the universe. What is the first thing you type?
Tell me about a creative way that you've used SSH?
You have deleted by error a running script, what could you do to restore it?
What will happen on 19 January 2038?
How to reboot server when reboot command is not responding?

[⬆] Demo Time:
https://jivoi.github.io/2016/01/22/linux-sysadm-devops-interview-questions/

Unpack test.tar.gz without man pages or google.
https://www.linode.com/docs/quick-answers/linux/compress-files-using-the-command-line/

Remove all "*.pyc" files from testdir recursively?
https://stackoverflow.com/questions/785519/how-do-i-remove-all-pyc-files-from-a-project

Search for "my konfu is the best" in all *.py files.
grep -r "my konfu is the best"

Replace the occurrence of "my konfu is the best" with "I'm a linux jedi master" in all *.txt files.
Test if port 443 on a machine with IP address X.X.X.X is reachable.
Get http://myinternal.webserver.local/test.html via telnet.
How to send an email without a mail client, just on the command line?
Write a get_prim method in python/perl/bash/pseudo.
Find all files which have been accessed within the last 30 days.
Explain the following command (date ; ps -ef | awk '{print $1}' | sort | uniq | wc -l ) >> Activity.log
Write a script to list all the differences between two directories.
In a log file with contents as <TIME> : [MESSAGE] : [ERROR_NO] - Human readable text display summary/count of specific error numbers that occurred every hour or a specific hour.



More Resources:

https://blog.balthazar-rouberol.com/preparing-the-sre-interview

Good Scaling blog: https://blog.hartleybrody.com/scale-load/
Tshoot tips: https://blog.hartleybrody.com/debugging-code-beginner/
Cgroups: Containers: cgroups, Linux kernel namespaces, ufs, Docker, and intro to Kubernetes pods

Kernel Tutorials: https://learnlinuxconcepts.blogspot.com/2014/10/this-blog-is-to-help-those-students-and.html

NETFLIX PERFORMANCE BLOG: https://netflixtechblog.com/linux-performance-analysis-in-60-000-milliseconds-accc10403c55
Netflix Breden Gregg, USE Method: http://www.brendangregg.com/usemethod.html

System Interview questions: https://github.com/0xAX/linux-insides/blob/master/SUMMARY.md

Interesting blog: https://open.blogs.nytimes.com/2010/12/20/using-flat-files-so-elections-dont-break-your-server/?_r=0
