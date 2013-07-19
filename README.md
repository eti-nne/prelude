>Emacs Prelude
==============

> Emacs is probably the best text editor in the world. However, the
process of coming up with a useful Emacs configuration is long and
difficult. It's this process that separates you from truly taking
advantage of Emacs's power. I like to refer to this process as the
**Prelude**. **Emacs Prelude** has the goal to ease the initial Emacs
setup process and to provide you with a much more powerful and
productive experience than the one you get out of the box. By using
**Emacs Prelude** you're basically getting a *"Get me out of the
Prelude, I just want to use Emacs"* card.

Prelude is an amazing emacs configuration system developed by Bozhidar
Ivanov Batsov. See http://batsov.com/prelude/. This is my very own
Emacs Prelude's fork. People will generally not use it except they
share my emacs experience.

## Install

```bash
$ curl -L https://github.com/jwintz/prelude/raw/master/utils/installer.sh | sh
```

## Changes

- init.el: Add prelude-themes-dir and add it to custom theme load path.
- core/prelude-packages.el: themes have been removed from package list.
- core/prelude-ui.el: prevent prelude from loading default theme.

## Overrides

personal/prelude-override.el tweaks the default prelude setup with the
following:

- disable prelude-whitespace
- disable prelude-flyspell
- disable prelude-guru
- disable ido
- disable electric pairing
- swap meta and super on darwin

## Additional packages

- core/prelude-header.el

## Additional modules

- modules/prelude-cmake provides cmake-mode
- modules/prelude-ninja provides ninja-mode
- modules/prelude-qml provides qml-mode
- modules/prelude-git-gutter provides git-gutter-mode
- modules/prelude-dash-at-point provides osx dash lookup

## Additional bindings

- `C-c z`: 'ff-find-other-file
- `C-c SPACE`: 'dash-at-point
- `C-x C-h m`: 'make-header
- `C-x C-h c`: 'make-box-comment
- `C-x C-h d`: 'make-divider
- `C-x C-h r`: 'make-revision
- `C-x C-h g`: 'update-file-header
- `C-x C-g t`: 'git-gutter:toggle
- `C-x C-g d`: 'git-gutter:popup-diff
- `C-x C-g p`: 'git-gutter:previous-hunk
- `C-x C-g n`: 'git-gutter:next-hunk
- `C-x C-g r`: 'git-gutter:revert-hunk
