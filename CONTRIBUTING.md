# Contributing

`Casks/starcat.rb` is maintained by the Starcat Direct release workflow. Avoid manual URL, version, or checksum changes unless the release automation cannot be used and the reason is documented in the pull request.

Before opening a pull request, run:

```bash
brew style Casks/starcat.rb
brew tap starcat-app/starcat "https://github.com/starcat-app/homebrew-starcat.git"
brew audit --strict --cask starcat-app/starcat/starcat
```

Never replace a checksum unless it matches the notarized release artifact published by Starcat. Do not include signing credentials, release tokens, or unpublished download URLs in issues or pull requests.
