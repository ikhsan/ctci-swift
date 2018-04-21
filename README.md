# Cracking The Coding Interview

[![Build Status](https://travis-ci.org/ikhsan/ctci-swift.svg?branch=master)](https://travis-ci.org/ikhsan/ctci-swift)
![Swift 4](https://img.shields.io/badge/Swift-4.0-orange.svg)

Solutions of Cracking The Coding Interview written in Swift.

## Tests

Tests are updated by using [Sourcery](https://github.com/krzysztofzablocki/Sourcery). When editing tests (add, remove, disable, enable tests) run `sourcery` from the root folder. You can unzip `sourcery`'s [latest binary](https://github.com/krzysztofzablocki/Sourcery/releases) and put the `bin` directory in the root directory, then run `bin/sourcery` from the root directory.

Run the test by using SPM's test command:

```bash
$ swift test
```

You can also run individual tests by using its number.

```bash
$ swift test --filter 2.1
```

## Solved Problems

- ArrayAndString
  - 1.1.AllUnique
  - 1.2.CheckPermutation
  - 1.3.Urlify
  - 1.4.PalindromPermutation
  - 1.5.OneAway
  - 1.6.StringCompression
  - 1.7.RotateMatrix
  - 1.8.ZeroMatrix
  - 1.9.StringRotation
- BitManipulation
  - 5.1.Insertion
  - 5.6.Conversion
- LinkedLists
  - 2.1.RemoveDups
  - 2.2.ReturnKthToLast
  - 2.5.SumLists
  - 2.6.Palindrome
  - 2.7.Intersection
  - 2.8.LoopDetection
- Moderate
  - 16.1.NumberSwap
  - 16.2.WordFrequencies
  - 16.3.CountZeroFactorial
  - 16.4.FindMinDiff
  - 16.15.MasterMind
  - 16.19.PondSize
  - 16.8.EnglishInt
  - 16.17.ContiguousSequence
  - 16.21.SumSwap
- RecursionAndDynamicProgramming
  - 8.1.TripleSteps
  - 8.2.RobotInAGrid
  - 8.4.PowerSet
  - 8.5.RecursiveMultiply
  - 8.9.Parens
  - 8.11.Coins
- SortingAndSearching
  - 10.1.SortedMerge
- StacksAndQueues
  - 3.2.StackMin
  - 3.4.QueueViaStacks
  - 3.5.SortStack
- TreesAndGraphs
  - 4.1.RouteBetweenNodes
  - 4.2.MinimalTree
  - 4.3.ListOfDepth
  - 4.5.ValidateBST
  - 4.7.BuildOrder
  - 4.8.FirstCommonAncestor

## License

MIT
