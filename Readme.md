```
Script v1 - Instance Management
Choose your zone? (Example: us-central1-a)
us-central1-a
What do you want On or Off? (On/Off)
Off
Chose label to work:
--------
12x5
8x5
All
--------
12x5
NAME        ZONE           MACHINE_TYPE  PREEMPTIBLE  INTERNAL_IP  EXTERNAL_IP     STATUS
instance-1  us-central1-a  e2-medium                  10.128.0.6   35.232.224.248  RUNNING
instance-2  us-central1-a  e2-micro                   10.128.0.13  34.136.101.112  RUNNING
Do you want stop all instances? (Y/N)
Y
Stopping instance(s) instance-1, instance-2...done.                                                                                                                                                                                                                   
Updated [https://compute.googleapis.com/compute/v1/projects/lexical-botany-307503/zones/us-central1-a/instances/instance-1].
Updated [https://compute.googleapis.com/compute/v1/projects/lexical-botany-307503/zones/us-central1-a/instances/instance-2].
```