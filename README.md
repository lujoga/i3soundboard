# i3 soundboard mode

config section and shell script for controlling a [soundboard](https://github.com/b4ckspace/soundboard) via i3

## config.cat

Append this to your i3 config, then add key bindings as you like.

```sh
cat .config/i3/config config.cat | sponge .config/i3/config
```

## soundboard.sh

Edit this script and set `$SOUNDBOARD_URL` (and `$SOUNDBOARD_URL_ALT`, if applicable) accordingly. Place it somewhere in your `$PATH`, e.g. `.local/bin/soundboard.sh`.
