;;; prelude-additions.el --- 
;; 
;; Author: Julien Wintz
;; Created: Sun Jan 27 22:08:06 2013 (+0100)
;; Version: 
;; Last-Updated: Sun Jan 27 22:08:43 2013 (+0100)
;;           By: Julien Wintz
;;     Update #: 12
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 
;;; Change Log:
;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; File header
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq header-author 'user-full-name)
(setq header-file-name 'buffer-file-name)
(setq header-creation-date 'current-time-string)
(setq header-modification-author 'user-full-name)
(setq make-header-hook '(header-title
                         header-blank
                         header-author
                         header-creation-date
                         header-version
                         header-modification-date
                         header-modification-author
                         header-update-count
                         header-end-line
                         header-history
                         header-blank
                         header-end-line))

(define-key global-map "\C-x\C-hm" 'make-header)
(define-key global-map "\C-x\C-hc" 'make-box-comment)
(define-key global-map "\C-x\C-hd" 'make-divider)
(define-key global-map "\C-x\C-hr" 'make-revision)
(define-key global-map "\C-x\C-hg" 'update-file-header)

(add-hook 'write-file-hooks 'auto-update-file-header)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Find other file
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global-set-key (kbd "C-c z") 'ff-find-other-file)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CMake mode
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq auto-mode-alist
      (append '(("CMakeLists\\.txt\\'" . cmake-mode)
                ("\\.cmake\\'" . cmake-mode))
              auto-mode-alist))
