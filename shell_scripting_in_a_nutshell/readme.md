# NOTES

shebang is used to define the script interpreter

`#!/bin/bash`
`#!/bin/sh`
`#!/bin/bin/python` <- you can define a programming runtime rather than a shell

## Variables
Variables are case sensitive and ideally should be all uppercase
assign values using `VAR="something"` or `VAR=$(result of a command)`
variables cannot start with a digit - they can be formed of chars, digits and underscores

output a variable value using `$VAR` or `${VAR}` <- this is used when you want to output additional
text as part of the variable value; but you could also use printf to get around this.

```shell
echo "i am $VARing my keyboard" #<- will fail
echo "i am ${VAR}ing my keyboard" #<- will work
printf "i am %sing my keyboard" $VAR #<- will work
```

## Tests

place a condition between square brackets []

True - exit = 0
False - exit = 1

### Conditionals

if [ test ]
then
	command
elif [ test ] #<- ElseIf...
then
	command
else
	command
fi

variables should be quoted in tests to stop globbing...

use a for loop to perform actions on a list of items

LIST=()
for VALUE in "${LIST[@]}"
do
	command
done

postional params use $0 $1 etc to pass to a script

$@ is a list you can iterate through

Accepting input use
`read -p "PROMPT" "VAR"` 

