# Commands

## LS

```shell
#show hidden files
ls -a

#use long listing format e.g. perms, owners, size etc.
ls -l
```

### filtering files

#### Globbing
use ? wildcard to represent a single character
use * wildcard to represent many character
use [] to represent a range of characters
use ! to negate the match

## Linking

### symbolic links

```shell
ln -s file_link linked_file
```

The linked file contains metadata pointing to the linked file.

### hard links

Hard links are the same file

```shell
ln hard_link linked_hard_link
```
## file

The file commands provides you with the information of a file e.g. file file_name or file directory.

## less

Useful for viewing file content and searching within files.

## find

find location -name file name e.g.

find / -name *.txt
find . -empty | less

## locate

locate file_name 

relies on a database to return results and might not be up-to-date.

## grep

grep [options] [pattern] [file]

grep -v - negate grep 

grep -n - shows line number

grep -c - count matches

## sort

sort file
sort -n file - sort numbers

## zip and unzip

gzip does not compress directories

zip archive files
zip -r archive directory

tar -cvf
tar -xvf

## pushd

pushd things onto the stack

## popd

popd removes things from the stack

## ! 
Run the last command e.g. echo "Hello" 
!echo

## history

!## e.g. ## is the number with history

