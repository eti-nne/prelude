(defun disable-guru-mode ()
  (guru-mode -1))

(setq prelude-whitespace nil)
(setq prelude-flyspell nil)

(add-hook 'prelude-prog-mode-hook 'disable-guru-mode t)
