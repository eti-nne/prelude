;; CMake mode

(require 'prelude-cmake)
(setq auto-mode-alist
      (append '(("CMakeLists\\.txt\\'" . cmake-mode)
                ("\\.cmake\\'" . cmake-mode))
               (and )uto-mode-alist))
