# Usage
This script uses ```radclient``` to perform repeated tests against any RADIUS server. radclient is a part of the ```freeradius-utils``` package on Ubuntu. 

More documentation on ```radclient``` is located here: https://wiki.freeradius.org/config/Radclient


Download the file and make it executable. I use the output switches in bash to send it to both stdout and to a file for parsing later.
```
chmod +x radiusTester.sh
./radiusTester.sh 2>&1 | tee outputFile 
```

Don't forget to update the placeholders USERNAME, PASSWORD and SERVER with your own values.


# Example output
```
2025-02-18T18:59:51,507243274+00:00
Sent Access-Request Id 11 from 0.0.0.0:47992 to <REMOVED>:1812 length 73
Received Access-Accept Id 11 from <REMOVED:1812 to <REMOVED:47992 length 20

real    0m0.544s
user    0m0.023s
sys     0m0.000s
Request Number 18
Hit CTRL+C to stop
---
```
