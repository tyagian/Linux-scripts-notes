#!/bin/bash
cat list | while read acid
do
sql2 -q esslaggs.dev.akamai.com "select account_name, account_id, is_enrolled from (select * from ccare_all_cpcode_alert_thresholds where account_id = '$acid' and is_enrolled = 1 group by account_name)";
done


/home/antyagi/scripts/cmp-test.sh