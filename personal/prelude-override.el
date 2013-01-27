;; Helper functions

(defun disable-guru-mode ()
  (guru-mode -1))

;; Disable prelude whitespaces

(setq prelude-whitespace nil)

;; Disable preludes flyspell

(setq prelude-flyspell nil)

;; Disable prelude guru mode

(add-hook 'prelude-prog-mode-hook 'disable-guru-mode t)

;; Disable ido-mode

(ido-mode 0)

;; Disable flyspell

(flyspell-mode -1)

;; Default theme is solarized

(load-theme 'solarized t)
