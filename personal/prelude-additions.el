;; C basic offset

(setq-default c-basic-offset 4)

;; CMake mode

(setq auto-mode-alist
      (append '(("CMakeLists\\.txt\\'" . cmake-mode)
                ("\\.cmake\\'" . cmake-mode))
              auto-mode-alist))

;; Find other file

(global-set-key (kbd "C-c z") 'ff-find-other-file)
