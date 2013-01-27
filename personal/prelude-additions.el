;; File header

(setq header-copyright-notice "Copyright © Julien Wintz\n")
(setq header-author 'user-full-name)
(setq header-file-name 'buffer-file-name)
(setq header-creation-date 'current-time-string)
(setq header-modification-author 'user-full-name)
(setq make-header-hook '(
;;                        header-title
;;                        header-copyright
;;                        header-blank
;;                        header-file-name
;;                        header-description
;;                        header-author
;;                        header-modification-author
;;                        header-creation-date
;;                        header-modification-date
;;                        header-version
;;                        header-update-count
;;                        header-history
;;                        header-blank
;;                        header-blank
;;                        header-end-line
;;                        header-blank
;;                        header-eof
                        ))

(define-key global-map "\C-x\C-hm" 'make-header)
(define-key global-map "\C-x\C-hc" 'make-box-comment)
(define-key global-map "\C-x\C-hd" 'make-divider)
(define-key global-map "\C-x\C-hr" 'make-revision)
(define-key global-map "\C-x\C-hg" 'update-file-header)

(add-hook 'write-file-hooks 'auto-update-file-header)

;; Find other file

(global-set-key (kbd "C-c z") 'ff-find-other-file)

;; CMake mode

(setq auto-mode-alist
      (append '(("CMakeLists\\.txt\\'" . cmake-mode)
                ("\\.cmake\\'" . cmake-mode))
              auto-mode-alist))
