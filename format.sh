#!/bin/bash
grep -rl 'Copyright 2019' ./src | xargs sed -i 's/Copyright 2019/Copyright 2020/g'
find ./src -iname *.h* -o -iname *.c* | xargs clang-format -style=File -i -verbose
