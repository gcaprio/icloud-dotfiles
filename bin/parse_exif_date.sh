#!/bin/bash

CREATE_DATE=`/usr/local/bin/exiftool -CreateDate $1`

EXIF_TIMESTAMP=`/bin/expr "$CREATE_DATE" : '.*Create Date[ ]*: \(.*\)'`

echo "$EXIF_TIMESTAMP"

TIMESTAMP=`/bin/date -j -f "%Y:%m:%d %H:%M:%S" "$EXIF_TIMESTAMP" "+%Y%m%d%H%M.%S"`

/usr/bin/touch -t "$TIMESTAMP" $1

#stringZ=abcABC123ABCabc
#echo `expr substr $stringZ 1 2`
