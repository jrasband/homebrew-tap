# Jrasband Tap

## rmapi

Install rmapi from [my personal fork](https://github.com/jrasband/rmapi):

```sh
brew install jrasband/tap/rmapi
rmapi version
```

The formula builds version 0.0.35 from the fork's tagged source. To build the
latest commit on the fork's master branch instead:

```sh
brew install --HEAD jrasband/tap/rmapi
```

Run `rmapi` to authenticate with the reMarkable cloud. See the fork's README
for usage and authentication instructions.

To publish a new stable version, push a new `v<version>` tag to
`jrasband/rmapi`, update `Formula/rmapi.rb` with its archive URL and SHA-256,
and commit the formula update here. The source-build dependency is Go;
prebuilt bottles are not required.

## How do I install these formulae?

`brew install jrasband/tap/<formula>`

Or `brew tap jrasband/tap` and then `brew install <formula>`.

Or, in a `brew bundle` `Brewfile`:

```ruby
tap "jrasband/tap"
brew "<formula>"
```

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
