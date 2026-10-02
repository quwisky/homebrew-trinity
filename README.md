# Trinity Homebrew tap

Homebrew casks for [Trinity](https://github.com/quwisky/trinity-matrix-client), an
end-to-end encrypted Matrix client.

```sh
brew install --cask quwisky/trinity/trinity        # stable releases
brew install --cask quwisky/trinity/trinity@next   # -next prereleases
```

Both casks install `Trinity.app`, so only one can be installed at a time. They need
Apple Silicon and macOS 13 or later.

The casks are generated and pushed automatically by the
[`homebrew.yml`](https://github.com/quwisky/trinity-matrix-client/blob/develop/.github/workflows/homebrew.yml)
workflow when a signed, notarized release is published. Do not edit them by hand;
change `scripts/homebrew-cask.mjs` in the main repository instead.
