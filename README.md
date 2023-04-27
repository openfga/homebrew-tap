# OpenFGA Homebrew Formula
[![Discord Server](https://img.shields.io/discord/759188666072825867?color=7289da&logo=discord "Discord Server")](https://discord.com/channels/759188666072825867/930524706854031421)
[![Twitter](https://img.shields.io/twitter/follow/openfga?color=%23179CF0&logo=twitter&style=flat-square "@openfga on Twitter")](https://twitter.com/openfga)

The formulae provided in the OpenFGA Homebrew tap include support for both macOS and Linux binaries.

## Getting Started
```shell
brew tap openfga/tap
brew install openfga
```

To see the list of formula provided in the OpenFGA tap:
> ℹ️ The following command depends on the `jq` utility.
>
> `brew install jq`

```shell
brew tap-info openfga/tap --json | jq -r '.[]|(.formula_names[])'