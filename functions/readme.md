# Functions

DRY - Don't repeat yourself

```shell
function function_name() {
	# code here
}
```

All functions should go at the top of the script then be invoked further down


variables are global by default; variables must define prior to functions if you want to use 
the variable in those functions. 

variables defined in a function are only available once the function has been executed

local variables can only be used within a function.
define with `local var_name=""` then use as normal

to get the exit status of a function use the return keyword; if you don't the exit status 
is the exit status of the last command. return can only accept a integer.

you can grab the exit code of a function using `$?`





