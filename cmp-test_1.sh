#!/usr/bin/expect -f

exec echo "Results:" > result.txt
exec echo "" > list_of_ids_result.txt
log_file [pwd]/list_of_ids_result.txt
set f [open list r]
set idlist [ split [ read $f ] "\n" ]
close $f

send_user "\n starting Script Comnpare \n"

spawn cmpquery.sh
foreach ids $idlist {
expect {
  "run? " { send "1\r" }
}

expect {
  "ACDIG: " { send  "$ids\r" }
}

expect {
  "n)?"  { send "y\r" }
}

}

exec cat list_of_ids_result.txt | grep -i -B2 "1 rows" | grep -v ^$ | grep -v rows | grep -i 1 | rev | cut -f2- | rev > result.txt