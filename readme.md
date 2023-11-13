# :christmas_tree: Advent of Code Solutions :rocket:
### A diverse collection of festive coding challenges conquered annually

This repository contains my solutions to the Advent of Code challenges from 2021 onwards. Each year's solutions are organized into submodules for clarity and ease of navigation. What makes it even more exciting is that every year is tackled using a different programming language!

## Getting started
#### Cloning the repository

To clone this repository along with all submodules, use the following command:
```sh
git clone --recursive https://github.com/KGuz/advent-of-code.git
```

If you have already cloned the repository without the submodules, you can fetch them using:
```sh
git submodule update --init --recursive
```

## Usage

Navigate to the specific year's submodule to access the solutions for that year. Each submodule is self-contained and contains the solutions organized by day.

Feel free to explore the code, and use it as a reference or starting point for your own solutions.

**Make sure you have installed required programming language tools and dependencies on your machine!**

## Project structure

Each repository follows the structure

```plaintext
.
├── 2021
│   ├── assets
│   │   ├── examples
│   │   │   ├── day01.txt
│   │   │   └── ...
│   │   ├── inputs
│   │   │   ├── day01.txt
│   │   │   └── ...
│   │   └── ...
│   ├── src/advent
│   │   ├── day01.cpp
│   │   └── ...
│   └── ...
└── ...
```

## Scripts
### Session cookie

To be able to fetch inputs and submit answers, you first need to authenticate against [adventofcode.com](https://adventofcode.com) using the value from your session cookie. Here is a quick guide how to obtain it:

1. Log in to Advent of Code and access and puzzle input page
2. Right click the page and click "inspect"
3. Navigate to the "Network" tab
4. Click on any request, and go to the "Headers" tab
5. Search through the "Request Headers" for a header named cookie
6. You should find one value that starts with "session=" followed by a long string of hexadecimal characters. Copy the whole value, that's your session token

### Environmental variables

Next step is to create `.env` file and set two variables: `AOC_TOKEN` and `AOC_PATH`, where `AOC_TOKEN` is your session token and `AOC_PATH` is a path to this repo on your computer. It should look something like this:
```sh
AOC_TOKEN="session=0123456789abcdef..."
AOC_PATH="/path/to/this/advent-of-code"
```

Before running any script, make sure you have exported your environmental variables from `.env` file
```sh
set -a && source .env && set +a
```

### Fetching input

To fetch data for a given puzzle, simply run the `fetch.sh` script, followed by the year and day of advent. For example: `./fetch 2022 2`.

As a result, the script should:
* download the input data and save it to the file `2022/assets/inputs/day02.txt`
* download the test case data and save it to file `2022/assets/examples/day02.txt`
* print puzzle description to stdout


### Submitting answer

To submit an answer to a given puzzle, simply run the `submit.sh` script, followed by the year and day of advent, specify which part of the puzzle you are answering, and finally the answer itself. For example: `./submit 2021 1 2 5`.

As a result, the response to your submission will be printed to stdout
