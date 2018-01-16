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

You can also run individual tests by its number.

```bash
$ swift test --filter 2_1
```

## License

MIT
