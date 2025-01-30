# Dotfiles

A collection of configuration dotfiles managed by
[Chezmoi](https://www.chezmoi.io). These are configured to work on my Macs
(Apple Silicon and Intel) and probably won't work well for other setups.

The Xcode Command Line Tools must be installed before we can do anything.

```shell
xcode-select --install
```

This one-liner will fetch Chezmoi and install everything.

```shell
sh -c "$(curl -fsLS get.chezmoi.io/lb)" -- init --apply mpycroft
```

## Process

In addition to syncing the actual dotfiles into the correct directory, Chezmoi
will install [Homebrew](https://brew.sh) and install brews and casks listed in
the `.chezmoidata.toml` file.
