<p align="center">
Using <a href="https://github.com/ajeetdsouza/zoxide">zoxide</a> in xxh. Zoxide is a faster way to navigate your filesystem.
</p>

<p align="center">  
If you like the idea click ⭐ on the repo and <a href="https://twitter.com/intent/tweet?text=Nice%20plugin%20for%20the%20xxh%20project!&url=https://github.com/xxh/xxh-plugin-prerun-zoxide" target="_blank">tweet</a>.
</p>

## Note!

You can use [xontrib-jump-to-dir](https://github.com/anki-code/xontrib-jump-to-dir) as lightweight zero-dependency implementation of autojump or [xxh-plugin-prerun-zoxide](https://github.com/xxh/xxh-plugin-prerun-zoxide) projects functionality.

## Install
```shell
xxh +I xxh-plugin-prerun-zoxide
```

## Usage
```shell
xxh host
cd /etc
cd /tmp
z e
# /etc
```

## Supported xxh-shells

* [xxh-shell-xonsh](https://github.com/xxh/xxh-shell-xonsh)
* [xxh-shell-zsh](https://github.com/xxh/xxh-shell-zsh)
* [xxh-shell-fish](https://github.com/xxh/xxh-shell-fish)
* [xxh-shell-bash](https://github.com/xxh/xxh-shell-bash)

Add your shell by creating `pluginrc` file.

## Credits

This plugin was created with [xxh-prerun-plugin cookiecutter template](https://github.com/xxh/cookiecutter-xxh-plugin-prerun).
