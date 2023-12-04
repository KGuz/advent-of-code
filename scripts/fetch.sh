#!/bin/bash

# parameters: $1 - year, $2 - day
[ "$#" -ne 2 ] && echo "Invalid number of arguments" && exit

# fetch input page
output=$(printf "%s/%d/assets/inputs/day%02d.txt" $AOC_PATH $1 $2)
result=$(wget -qO- --header="Cookie: $AOC_TOKEN" https://adventofcode.com/$1/day/$2/input)

echo -n "$result" > $output

# fetch puzzle page
output=$(printf "%s/%d/assets/examples/day%02d.txt" $AOC_PATH $1 $2)
result=$(wget -qO- --header="Cookie: $AOC_TOKEN" https://adventofcode.com/$1/day/$2)
eol=$'\n'

# parse the page and extract the test case
example="${result#*"<pre><code>"}"
example="${example%%$eol"</code></pre>"*}"

echo -n "$example" > $output

# parse the page and extract puzzle description
result="${result#*"<article class=\"day-desc\">"}"
part_one="${result%%"</article>"*}"

result="${result#*"<article class=\"day-desc\">"}"
part_two="${result%%"</article>"*}"

desc=$part_one$eol$part_two
desc=${desc//<p>/$eol}
desc=${desc//<li>/'- '}

# remove html tags and format output
echo -n "$desc" | sed -e 's/<[^>]*>//g' | fold -s -w76 | paste -sd'\n' | sed -e 's/\s*$//'
