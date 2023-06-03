#!/bin/bash

# Name of the LXD profile and parent network interface
PROFILE_NAME="macvlan"
PARENT_INTERFACE="eth0"  # change this to your host's network interface

# Create the profile
lxc profile create $PROFILE_NAME

# Add a macvlan device to the profile
lxc profile device add $PROFILE_NAME eth0 nic nictype=macvlan parent=$PARENT_INTERFACE
