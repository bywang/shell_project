#!/bin/bash

stringZ=abcABC123ABCabc

echo ${#stringZ}
echo `expr length $stringZ`
echo `expr "$stringZ" : '.*'`
