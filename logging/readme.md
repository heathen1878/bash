# Logging

who, what, when, where and why

Linux uses syslog standard

`/var/log/messages`
`/var/log/syslog`

Severities

```shell
emerg
alert
crit
err
warning
notice
info
debug
```

Facilities

where the message originate from...
shell scripts should probably use local0 to local7.

Syslogger for Ubuntu - 
`logger -p facilities.severity`



