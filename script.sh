#!/bin/bash
clear; echo "Script v1 - Instance Management"
# DOC labels: https://cloud.google.com/resource-manager/docs/creating-managing-labels

### Stop Instance
# gcloud compute instances stop test-instance

# List Instances
# gcloud compute instances list --filter='labels.k1:v2'

### Remove Labels
# gcloud compute instances remove-labels example-instance  --labels=k0,k1

Menu() {
    echo "Chose label to work:"
    echo "--------"
    echo "12x5"
    echo "8x5"
    echo "All"
    echo "--------"
    read OP
}

#  List Instance
InstanceList() {
    gcloud compute instances list --filter='labels.job:'${LABEL}
}

# Turn On/Off Instance
InstanceAct() {
    InstanceList
    echo "Do you want $ACTION all instances? (Y/N)"
    read ANS
    if [ $ANS == "Y" ]; then
        gcloud compute instances $ACTION $(gcloud compute instances list --filter='labels.job:'${LABEL} | cut -d" " -f1 | grep -v NAME) --zone="us-central1-a"
    fi
}

echo "Choose your zone? (Example: us-central1-a)"
read ZONE

echo "What do you want On or Off? (On/Off)"
read ACAO
if [ $ACAO == "On" ];
then
    ACTION="start"
fi
if [ $ACAO == "Off" ];
then
    ACTION="stop"
fi

Menu # Show the Menu
case $OP in
    "12x5")
        export LABEL="12x5"
        InstanceAct
    ;;
    "8x5")
        LABEL="8x5"
        InstanceAct
    ;;
    "All")
        gcloud compute instances $ACTION --filter=labels:*
    ;;
esac