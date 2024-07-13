# Exit statuses

`0` = `success`
non-zero - failure

`$?` - contains return code of the previously executed command


`&&` only executes the second command if first command returns a 0 exit or return code

`||` will execute the second command if the first doesn't return a 0 exit code

the `;` is used to execute seperate commands on the same line

`exit` command can control the return code

demo

```shell
ping -c 1 -w 1 bbc.co.uk
echo $?
```

manpage to determine exit codes
/ to search for stuff...