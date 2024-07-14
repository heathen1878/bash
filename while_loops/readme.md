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

### user input

```shell
REGEX_MATCH='^[y|Y|yes|Yes]+$'
CORRECT="n"
while ! [[ "${CORRECT}" =~ ${REGEX_MATCH} ]]
do
    read -r -p "Enter your name: " NAME
    read -r -p "Is ${NAME} correct? " CORRECT
done
```


exit status
break and continue


