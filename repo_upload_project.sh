#!/bin/bash

PLATFORM_WITH=ssh://gitosis@10.12.0.1/hhdroid/platform/
PLATFORM_WITHOUT=ssh://gitosis@10.12.0.1/hhdroid/
VALUE_DEVICE=`expr match "$REPO_PATH" "device"`
VALUE_KERNEL=`expr match "$REPO_PATH" "kernel"`

if [ "$VALUE_DEVICE" -gt "0" ] || [ "$VALUE_KERNEL" -gt "0" ]
then
    echo $PLATFORM_WITHOUT$REPO_PATH
    git remote add hhgit $PLATFORM_WITHOUT$REPO_PATH
else
    echo $PLATFORM_WITH$REPO_PATH
    git remote add hhgit $PLATFORM_WITH$REPO_PATH
fi
