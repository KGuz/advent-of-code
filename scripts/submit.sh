#!/bin/bash

# parameters: $1 - year, $2 - day, $3 - part, $4 - answer
[ "$#" -ne 4 ] && echo "Invalid number of arguments" && exit

# fetch answer page
answer=$(printf "level=%d&answer=%s" $3 $4)
result=$(wget -qO- --header="Cookie: $AOC_TOKEN" https://adventofcode.com/$1/day/$2/answer --post-data $answer)

# parse the page and extract the response
result="${result#*"<article>"}"
result="${result%%"</article>"*}"

# remove html tags
echo "$result" | sed -e 's/<[^>]*>//g'