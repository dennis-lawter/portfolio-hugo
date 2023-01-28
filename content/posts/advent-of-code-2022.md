+++
title = "Advent of Code 2022"
#date = 2023-01-18T23:37:59-05:00
author = "Dennis Lawter"
tags = ["rust", "github", "advent-of-code"]
keywords = ["rust", "github", "advent of code", "2022", "competition"]
description = "Advent of Code 2022"
showFullContent = false
readingTime = true
draft = false
weight = 100
+++

With 2022 being my introduction to Advent of Code, I knew I would have to complete the challenge.

## GitHub Repo

[Checkout My GitHub Repo](https://github.com/dennis-lawter/bytomancer-aoc-2022)

## What is Advent of Code?

[Advent of Code](https://adventofcode.com/) is an annual programming challenge event that takes place during the month of December.
Each day of the event, a new problem is released and participants have the opportunity to solve it using their programming skills.
The event was created by [Eric Wastl](https://twitter.com/ericwastl?lang=en) in 2015 and has run every year since.

The competition has created a large community, with excellent discussions every year at [r/AdventOfCode](https://reddit.com/r/adventofcode/).
Due to the nature of the event, competitors are able to use whatever language they like.

## My Submission

I have had a recent desire to learn [Rust 🦀](https://www.rust-lang.org/), and I decided this would be the perfect opportunity to start.
Much of my development experience has been in C++, but with the difficulties of dependency management, memory safety, and platform portability, I've always yearned for something better.
Rust had always been on my radar, but until watching a very informative series of [video essays](https://www.youtube.com/playlist?list=PLZaoyhMXgBzoM9bfb5pyUOT3zjnaDdSEP), I had never persued the language.
While I don't view myself as an expert after finishing the 2022 competition, I'm much more comfortable with the language now and ready to take on real projects.

I was even able to implement a number of very neat features in my project.
Simply using a terminal to run the program (example: `cargo run -- d1s1 -s`) performs a number of operations behind the scenes:
1. The command line argument in the example, `d1s1`, represents **day one, solution one**.
1. A local cache, hidden from git via `.gitignore`, contains all the input files which are unique to each user.
1. The local cache is checked for the **day one** input file, and if it is not found it will download your file from `adventofcode.com`.
1. Once the file is stored locally, a benchmark begins and the solution is executed.
1. The file is read and the solution is calculated and displayed to **stdout**.
1. The `-s` optional flag indicates that the user wishes for the application to perform the submission to the website automatically.
1. The user is informed if the submission was accepted or rejected, and given some feedback if it was provided and parseable.
1. Lastly, the benchmark completes and the total time to compute the answer is displayed.

## Visualizations

One of the most satisfying things to do with Advent of Code is to create **Visualizations** to show the way your code solved the problem.
While I would have liked to produce a few more, I did enjoy creating these three.

### Youtube Videos

[![Day 9 Visualization](https://img.youtube.com/vi/v7zBbKDi_vc/0.jpg)](https://www.youtube.com/watch?v=v7zBbKDi_vc)

https://www.youtube.com/watch?v=v7zBbKDi_vc

[![Day 12 Visualization](https://img.youtube.com/vi/vrWMKhDPTnU/0.jpg)](https://www.youtube.com/watch?v=vrWMKhDPTnU)

https://www.youtube.com/watch?v=vrWMKhDPTnU

[![Day 14 Visualization](https://img.youtube.com/vi/4wF3vyrHkuo/0.jpg)](https://www.youtube.com/watch?v=4wF3vyrHkuo)

https://www.youtube.com/watch?v=4wF3vyrHkuo

## Post Mortem

I began the competition the second the first problem launched, and I had already decided on a list of goals:
* I would solve every problem in only Rust.
* I would not use `unsafe{}`, which allows one to circumvent the Rust compiler's static analysis and protections.
* I would not look at any solutions to a problem before I had solved it myself.
* I would solve every problem within **24 hours**.

Despite the difficulty, I was able to meet all of these goals and achieve a final rank of **1399**,
meaning I was the 1,399th person to finish all problems for 2022.

### Leaderboard
```md
      --------Part 1--------   --------Part 2--------
Day       Time   Rank  Score       Time   Rank  Score
 25   00:37:08   1639      0   00:37:41   1399      0
 24   01:42:14   1919      0   01:55:38   1812      0
 23   02:11:06   3219      0   02:20:42   3127      0
 22   02:05:17   3286      0   21:33:23   6980      0
 21   01:21:47   4666      0   04:54:21   6202      0
 20   02:46:14   3754      0   02:57:15   3296      0
 19   11:29:45   5410      0   11:39:47   4436      0
 18   00:29:51   3165      0   01:25:33   2630      0
 17   02:20:47   3302      0   16:46:21   7793      0
 16   15:41:55  11140      0   22:12:27   8832      0
 15   02:34:50   7838      0   03:16:11   5141      0
 14   00:53:14   4049      0   01:00:03   3450      0
 13   02:07:20   7273      0   02:59:35   8144      0
 12   03:28:22  10290      0   04:03:45  10663      0
 11   02:28:55  10988      0   02:48:03   7723      0
 10   00:37:47   7569      0   00:49:27   5097      0
  9   00:40:10   5810      0   00:58:11   4108      0
  8   01:21:53  12721      0   01:52:00  11392      0
  7   03:27:50  17261      0   03:38:59  16401      0
  6   00:18:52  10885      0   00:20:20   9747      0
  5   00:41:47   8188      0   00:52:34   8742      0
  4   09:56:31  66584      0   10:03:01  64584      0
  3   00:12:42   4072      0   00:25:30   5391      0
  2   00:12:33   4442      0   00:16:11   2982      0
  1   00:15:44   7176      0   00:23:06   7379      0
```
