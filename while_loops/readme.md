# While Loops

```shell
while [ condition ]
do
    commands
done
```

## Infinite

Good for scripting a daemon that processes something

## loop control

### x no. of times

```shell
INDEX=0
while [ $INDEX -le 5 ]
do
    command
    ((INDEX++))
done
```

### User input

```shell
REGEX_MATCH='^[y|Y|yes|Yes]+$'
CORRECT="n"
while ! [[ "${CORRECT}" =~ ${REGEX_MATCH} ]]
do
    read -r -p "Enter your name: " NAME
    read -r -p "Is ${NAME} correct? " CORRECT
done
```

### Return code

```shell
while command
do
    commands
done
```

```shell
while ping -c 1 bbc.co.uk >/dev/null
do
    echo "app up..."
    sleep 5
done

echo "app down, continuing...."
```

### Reading files

```shell
LINE_NUM=1
while read LINE
do
    echo "${LINE_NUM}: ${LINE}"
    ((LINE_NUM++))
done < /etc/resolv.conf
```

```shell
printenv | grep WSL | while read LINE
do
    echo "VAR: ${LINE}"
done
```

```shell
# the read command can take multiple variables
read VAR1 VAR2 VAR3...
```

### Break

Use `break` to exit a loop

### Continue
Use `continue` to start the loop at the next iteration





