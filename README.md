# fs2hr
File Size 2 Human Readable

Scripting and technics to convert File Size in Human Readable

```
#!/bin/bash
#
# Convert File Size to Human Readble value
#
# https://en.wikipedia.org/wiki/File_size
#
# (c) 2019-07 Antonio Pos-de-Mina

# file size
file_size=$(($1 * 1))
file_unit='B'

# File scale B,kB,MB,GB,TB,PB,EB,ZB,YB
for file_unit in B kB MB GB TB PB EB ZB YB
do
    if [ $file_size -gt 1024 ]
    then
        file_size=$(($file_size/1024))
    else
        break
    fi
done

echo "$file_size[$file_unit]."
```
