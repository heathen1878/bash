#!/bin/bash

# Log message and output to stderr
# tail -f /var/log/syslog to view the log entry
logger -s -p user.info  $RANDOM

