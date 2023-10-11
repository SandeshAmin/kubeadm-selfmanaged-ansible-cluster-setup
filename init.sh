#!/bin/bash
ssh-keygen -R $CONTROLIP
ssh-keygen -R $DATAPLANE_IP1
ssh-keygen -R $DATAPLANE_IP2


ssh-keygen -R control1
ssh-keygen -R worker1
ssh-keygen -R worker2
