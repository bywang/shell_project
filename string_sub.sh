#!/bin/bash

stringZ=abcABC123ABCabc

echo `expr match "$stringZ" 'abc[A-Z]*.2'`
echo `expr "$stringZ" : '.bc[A-Z]*.2'`
VALUE=`expr "$stringZ" : 'abc[A-Z]*.2'`
echo $VALUE

if [ "$VALUE" -gt "0" ]; then
    echo "good"
else
    echo "wrong"
fi
