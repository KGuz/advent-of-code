# :christmas_tree: Advent of Code Solutions :rocket:
### A diverse collection of festive coding challenges conquered annually

This repository contains my solutions to the Advent of Code challenges from 2021 onwards. Each year's solutions are organized into submodules for clarity and ease of navigation. What makes it even more exciting is that every year is tackled using a different programming language!

## Getting Started
#### Cloning the Repository

To clone this repository along with all submodules, use the following command:
```bash
git clone --recursive https://github.com/KGuz/advent-of-code.git
```

If you have already cloned the repository without the submodules, you can fetch them using:
```bash
git submodule update --init --recursive
```

## Usage
Navigate to the specific year's submodule to access the solutions for that year. Each submodule is self-contained and contains the solutions organized by day.

Feel free to explore the code, and use it as a reference or starting point for your own solutions.

**Make sure you have installed required programming language tools and dependencies on your machine!**

## Structure
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