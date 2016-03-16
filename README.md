## Erlang module with geometry operations

#### Work in progress: constantly adding new operations

### Table of Contents
1. [Environment](#environment)
2. [Usage](#usage)
3. [Test Suites](#test-suites)

### Environment

I assume that you already have installed the Erlang environment tools.

### Usage

#### Erlang -- shell

(on the sources directory)

```
$ erl
#> c(geometry).
#> geometry:area(rectangle, 8, 14).
```

### Test Suites

#### How to run all tests?

```
$ erl
#> c(geometry).
#> geometry:tests().
```

(you should get "tests\_worked")
