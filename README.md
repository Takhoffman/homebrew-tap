# Takhoffman Homebrew Tap

This tap distributes native macOS utilities by Tak Hoffman:

- [Portlight](https://github.com/Takhoffman/portlight), a friendly read-only
  control center for understanding ports, processes, SSH keys, jobs, and system
  health.
- [SSD Watcher](https://github.com/Takhoffman/ssd-watcher), a menu-bar utility
  that watches agent databases for abnormal SSD write activity.

## Install Portlight

```sh
brew install --cask Takhoffman/tap/portlight
```

## Install SSD Watcher

```sh
brew install --cask Takhoffman/tap/ssd-watcher
```

Homebrew uses the same command to upgrade it later:

```sh
brew upgrade --cask ssd-watcher
```

The casks are published from signed and notarized release processes.
