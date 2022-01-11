# SICP: The Exercises

## Install Dependencies

### Scheme

The book uses [MIT/GNU Scheme](https://www.gnu.org/software/mit-scheme/) so that's what I used for the exercises.

#### Apple Silicon (M1 Mac)

Kenneth Friedman wrote a simple [step-by-step guide](https://www.kennethfriedman.org/thoughts/2021/mit-scheme-on-apple-silicon/) for installing `mit-scheme` on Apple Silicon. Worked like a charm for me!

#### Non-M1 Macs

```sh
brew install mit-scheme
```

### rlwrap

For your own sanity's sake, you will also want [rlwrap](https://github.com/hanslub42/rlwrap). It makes working in the REPL much easier.

```sh
brew install rlwrap
```

## Start the REPL

```sh
rlwrap scheme
```
