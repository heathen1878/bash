# SED

Stream Editor

stream is data that travels from one process to another via a pipe.

standard input `stdin`
standard output `stdout`
standard error `stderr`

sed is good for text transformations

`sed 's/search-pattern/replacement/flags'`

`sed 's//i'` - case insensitive
`sed 's//g'` - global

`sed 's//[1234]'` 1st, 2nd, 3rd or 4th occurence per line

to backup the original file use `-i`

create a new file with just the transformations

`sed 's/search/replace/gw replace.txt' search.txt`

you can specify anything as a delimiter, useful when `/` is contained within your search and replacement patterns.

a `d` flag deletes the line

```shell
sed '/^#/d'
sed '/^/d'
```

`-e` tells sed to execute that search pattern

```shell
sed -e '/^#/d' -e '/^/d' -e 's/search/replace/' input
```

`-f` tells sed to use a configuration file

you can specify a line address before the search pattern.