;; Disable prelude whitespaces

(setq prelude-whitespace nil)

;; Disable preludes flyspell

(setq prelude-flyspell nil)

;; Disable prelude guru mode

(setq prelude-guru nil)

;; Disable ido-mode

(ido-mode 0)

;; Disable electric pairing

(electric-pair-mode 0)

;; Swap meta and super on mac

(when (eq system-type 'darwin)
  (prelude-swap-meta-and-super))
