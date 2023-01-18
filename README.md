# ChiselStrike Homebrew tap

This repository is a private Homebrew tap with tools provided by [ChiselStrike](https://chiselstrike.com/).
Currently we're providing:

Tool | Installation instruction | Description
| :---: | :---: | :---: |
`ikuctl` | `brew install chiselstrike/tap/ikuctl` | Command line tool for managing `Turso` database

## Adding the tap to your homebrew
You can add ChiselStrike tap to your local homebrew with:

```console
brew tap chiselstrike/tap
```

That will allow you to install formuleas from this tap without referrencing it explicitely.

So for example you would be able to install `ikuctl` with:

```console
brew install ikuctl
```

instead of providing a full name like:

```console
brew install chiselstrike/tap/ikuctl
```
