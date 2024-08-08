#!/bin/bash

declare OPERATION=""

OPERATION="$1"

case $OPERATION in
    [Ss][Tt][Aa][Rr][Tt])
        PROC_COUNT="$(pgrep --count sleepwalkingser)"
        if [ "$PROC_COUNT" -eq 0 ]
        then
            ~/tmp/sleepwalkingserver &
        else
            echo "sleepwalkingserver already running"
        fi
    ;;
    [Ss][Tt][Oo][Pp])
        PROC_COUNT="$(pgrep --count sleepwalkingser)"
        if [ "$PROC_COUNT" -ge 1 ]
        then
            PID_FILE=$(pgrep --pidfile ~/tmp/sleepwalkingserver.pid)
            kill "$PID_FILE"
        else
            echo "sleepwalkingserver not running"
        fi
    ;;
    *)
    echo "Usage: exercise_1.sh start|stop"
    ;;
esac
