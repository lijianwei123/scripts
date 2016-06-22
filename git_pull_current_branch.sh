#!/bin/sh
set -x
cd ~/
current_path=`git rev-parse --abbrev-ref HEAD`
git pull origin $current_path
